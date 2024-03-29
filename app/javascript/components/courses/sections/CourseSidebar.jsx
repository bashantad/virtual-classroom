import React from 'react';
import PropTypes from 'prop-types';
import GraphicsImage from '../../../../assets/images/components/graphics-1.svg';
import RenderHtml from "../../common/RenderHtml";

const CourseSidebar = ({title, discounted_price, course_highlights_html, handleEnroll}) => {
    return (
        <>
            <div className="position-relative p-1">
                <a className="js-fancybox video-player" href="#"
                   data-hs-fancybox-options='{
                                 "src": "//youtube.com/0qisGSwZym4",
                                 "caption": "Front - Responsive Website Template",
                                 "speed": 700,
                                 "buttons": ["fullScreen", "close"],
                                 "youtube": {
                                   "autoplay": 1
                                 }
                               }'>
                    <img className="card-img-top" src={GraphicsImage} alt={title}/>

                    <span
                        className="video-player-btn video-player-centered text-center">
                            <span className="video-player-icon mb-2">
                              <i className="fa fa-play"></i>
                            </span>
                            <span className="d-block text-center text-white">
                              Preview this course
                            </span>
                          </span>
                </a>

            </div>

            <div className="card-body">
                <div className="mb-3">
                    <span className="h2 text-lh-sm mr-1 mb-0">${discounted_price}</span>
                    <span className="lead text-muted text-lh-sm"></span>
                </div>

                <div className="mb-2">
                    <a className="btn btn-block btn-primary transition-3d-hover"
                       href="#"
                       onClick={() => handleEnroll() }>
                        Enroll Now
                    </a>
                </div>

                <div className="text-center mb-4">
                    <p className="small">30-day money-back guarantee</p>
                </div>

                <h2 className="h4">This course includes</h2>

                <div className="media text-body font-size-1 mb-2">
                    <div className="media-body">
                        <RenderHtml body={course_highlights_html} />
                    </div>
                </div>
            </div>

            <a className="card-footer text-center font-weight-bold py-3"
               data-toggle="modal"
               data-target="#copyToClipboardModal" href="#">
                <i className="fa fa-share mr-1"></i>
                Share
            </a>
        </>
    );
};

CourseSidebar.propTypes = {
    title: PropTypes.string.isRequired,
    discounted_price: PropTypes.number.isRequired,
    course_highlights_html: PropTypes.string.isRequired,
    handleEnroll: PropTypes.func.isRequired,
}

export default CourseSidebar;
