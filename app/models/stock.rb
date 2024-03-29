class Stock < ApplicationRecord
	has_many :earning_histories
	has_many :stock_prices
	has_many :sites

	def ticker_with_name
		"#{ticker} (#{name})"
	end

	def display_website_diff
		return unless main_website.present?
		return if display_website.present? && main_website.downcase.include?(display_website)
		"manual: #{main_website}, automated: #{display_website}"
	end

	def display_website
		Site.extract_website(website)
	end

	def display_name
		name.gsub("Inc.", "").gsub("Company", "").gsub("Series 1", "").gsub("Holdings", "")
	end

	def create_stock_price(csv_row)
		parsed_data = _format_csv_to_db_row(csv_row)
		new_stock = self.stock_prices.new(parsed_data)
		new_stock.save
	end	

	def _format_csv_to_db_row(csv_row)
        {
           :date => csv_row["Date"],
           :open_price => csv_row["Open"],
           :high_price => csv_row["High"],
           :close_price => csv_row["Close"],
           :low_price => csv_row["Low"],
           :adjusted_close_price => csv_row["Adj Close"],
           :volume => csv_row["Volume"],
        }
   end

   def near_by_earning_dates(range_in_days)
   	all_dates = get_available_dates
		self.formatted_earning_dates.collect do |date|
			index = all_dates.index(date)
			next if index.nil?
			from = index - range_in_days
			to = index + range_in_days
			all_dates[from..to]
		end.compact.flatten.uniq
   end

   def formatted_earning_dates
   	self.earning_histories
   		.select("earning_date")
   		.collect { |row| row.earning_date.strftime("%Y-%m-%d") }
   end

   def get_available_dates
   	@dates ||= self.stock_prices.select("date").order("date").collect do |row|
   		row.date.strftime("%Y-%m-%d")
   	end
   end
end
