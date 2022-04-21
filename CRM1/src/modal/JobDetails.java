package modal;

public class JobDetails {

	String jobType;
	String jobdescription;
	String placeOfWork;
	String phoneNo;

	public JobDetails() {
	}

	public JobDetails(String jobType, String jobdescription, String placeOfWork, String phoneNo) {
		super();
		this.jobType = jobType;
		this.jobdescription = jobdescription;
		this.placeOfWork = placeOfWork;
		this.phoneNo = phoneNo;
	}

	public String getJobType() {
		return jobType;
	}

	public void setJobType(String jobType) {
		this.jobType = jobType;
	}

	public String getJobdescription() {
		return jobdescription;
	}

	public void setJobdescription(String jobdescription) {
		this.jobdescription = jobdescription;
	}

	public String getPlaceOfWork() {
		return placeOfWork;
	}

	public void setPlaceOfWork(String placeOfWork) {
		this.placeOfWork = placeOfWork;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	@Override
	public String toString() {
		return "JobDetails [jobType=" + jobType + ", jobdescription=" + jobdescription + ", placeOfWork=" + placeOfWork
				+ ", phoneNo=" + phoneNo + "]";
	}

}
