	Rails.application.routes.draw do

  get 'timetable/read'

  get 'sessions/new'

	 root 'static_pages#home'
	 get 'static_pages/login'
	 get 'help'    => 'static_pages#help'
	 get    'login'   => 'sessions#new'
  	post   'login'   => 'sessions#create'
	post 'testLogin' => 'sessions#createDefault'
  	get 'logout'  => 'sessions#destroy'
    get 'timetableread' => 'timetable#read'
    get 'preferences' => 'students#preferences'
    get 'semesterSelection' => 'students#processSemesterSelection'
    get 'testCourseDisplay' => 'timetable#courseDisplayStatic'
		get 'courseDisplay' => 'timetable#courseDisplay'
    post 'courseSelection' => 'timetable#processCourseSelection'
    post 'sectionSelection' => 'timetable#processSectionSelection'
    post 'courseDisplayGoToSemester' => 'timetable#processTermSelection'
    get 'nextSemesterTimetable' => 'timetable#nextSemester'
    get 'processEliminateEvent' => 'timetable#processEliminateEvent'
	  
	end
