import React from 'react';

import svg from '../../../assets/images/illustrations/discussion-scene.svg'
import TeacherQuiz from "./TeacherQuiz";

const Teacher = () => {
    return (
        <div class="container space-top-2">
            <div class="bg-light rounded overflow-hidden space-top-2 space-top-lg-1 p-4">
                <div class="row justify-content-lg-between align-items-lg-center no-gutters">
                    <div class='mx-auto'>
                        <div class="w-md-80 w-lg-50 text-center mx-md-auto mb-5 mb-md-9">
                            <span class="d-block small font-weight-bold text-cap mb-2">Test Your Students</span>
                            <h2>Online Quiz</h2>
                        </div>

                        <ul class="step step-md step-centered">
                            <li class="step-item">
                                <div class="step-content-wrapper">
                                    <span class="step-icon step-icon-soft-primary">1</span>
                                    <div class="step-content">
                                        <h3>Create</h3>
                                        <p>Create your own personalized quiz.</p>
                                    </div>
                                </div>
                            </li>

                            <li class="step-item">
                                <div class="step-content-wrapper">
                                    <span class="step-icon step-icon-soft-primary">2</span>
                                    <div class="step-content">
                                        <h3>Publish</h3>
                                        <p>Share it with your students.</p>
                                    </div>
                                </div>
                            </li>

                            <li class="step-item">
                                <div class="step-content-wrapper">
                                    <span class="step-icon step-icon-soft-primary">3</span>
                                    <div class="step-content">
                                        <h3>Get Feedback</h3>
                                        <p>Annalyze how your students are doing.</p>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div className="bg-light rounded overflow-hidden space-top-2 space-top-lg-1 p-4 mt-2">
                <div className='mx-auto'>
                    <div className="w-md-80 w-lg-50 text-center mx-md-auto mb-5 mb-md-9">
                        <span className="d-block small font-weight-bold text-cap mb-2">Create Quiz</span>
                    </div>

                    <div class='container mx-3'>
                        <div class="js-add-field row form-group"
                             data-hs-add-field-options='{
                            "template": "#addEmailFieldTemplate",
                            "container": "#addEmailFieldContainer",
                            "defaultCreated": 0
                          }'>
                            <label for="emailAddFieldExampleLabel"
                                   class="col-sm-2 col-form-label input-label">Question 1</label>

                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="question"
                                       id="question"
                                       placeholder="Question" aria-label="Question"/>

                                <input type="text" class="form-control mt-1" name="answer"
                                       id="answer"
                                       placeholder="Answer" aria-label="Answer"/>

                                <div id="addEmailFieldContainer"></div>

                                <a href="#" class="js-create-field form-link btn btn-xs btn-no-focus btn-ghost-primary">
                                    <i class="fas fa-plus mr-1"></i>
                                    Add More
                                </a>
                            </div>
                        </div>

                        <div id="addEmailFieldTemplate" style={{display: 'none'}}>
                            <div class="input-group-add-field">
                                <input type="email" class="form-control" data-name="addressLine"
                                       placeholder="Email address"
                                       aria-label="Email address"/>

                                <a class="js-delete-field input-group-add-field-delete" href="#">
                                    <i class="fas fa-times"></i>
                                </a>
                            </div>
                        </div>

                        <button className='btn btn-primary float-right'>Create</button>
                    </div>
                </div>
            </div>
        </div>
    );
};

export default Teacher;