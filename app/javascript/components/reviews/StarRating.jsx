import React, {Component} from 'react';

class StarRating extends Component {
    constructor(props) {
        super(props);
        this.state = {
            currentRating: this.props.currentRating
        };
    }

    componentDidMount() {
        this.setRating();
    }

    hoverHandler = ev => {
        const stars = ev.target.parentElement.getElementsByClassName('star');
        const hoverValue = ev.target.dataset.value;
        Array.from(stars).forEach(star => {
            star.style.color = hoverValue >= star.dataset.value ? '#EC9A3C' : '#d6d6d6';
        });
    };

    setRating = ev => {
        const stars = this.refs.rating.getElementsByClassName('star');
        Array.from(stars).forEach(star => {
            star.style.color =
                this.state.currentRating >= star.dataset.value ? '#EC9A3C' : '#d6d6d6';
        });
    };

    starClickHandler = ev => {
        let rating = ev.target.dataset.value;
        this.setState({currentRating: rating}); // set state so the rating stays highlighted
        if (this.props.onClick) {
            this.props.onClick(rating); // emit the event up to the parent
        }
    };

    render() {
        return (
            <div
                className="rating ml-3"
                ref="rating"
                data-rating={this.state.currentRating}
                onMouseOut={this.setRating}
            >
                {[...Array(+this.props.numberOfStars).keys()].map(n => {
                    return (
                    <i type='button'
                       className='star fa fa-star fa-2x mr-3' key={n + 1}
                       data-value={n + 1}
                       onMouseOver={this.hoverHandler}
                       onClick={this.starClickHandler}></i>
                )
                    ;
                })}
            </div>
        );
    }
}

export default StarRating;
