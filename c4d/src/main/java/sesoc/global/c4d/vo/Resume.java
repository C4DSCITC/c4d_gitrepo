package sesoc.global.c4d.vo;

public class Resume {

	private int res_ans_num;
	private String res_ans_id;
	private String res_ans_title;
	private String res_ans_content;
	private String res_ans_content2;
	private String res_ans_sort;
	
	public Resume() {
		super();
	}

	public Resume(int res_ans_num, String res_ans_id, String res_ans_title, String res_ans_content,
			String res_ans_content2, String res_ans_sort) {
		super();
		this.res_ans_num = res_ans_num;
		this.res_ans_id = res_ans_id;
		this.res_ans_title = res_ans_title;
		this.res_ans_content = res_ans_content;
		this.res_ans_content2 = res_ans_content2;
		this.res_ans_sort = res_ans_sort;
	}

	public int getRes_ans_num() {
		return res_ans_num;
	}

	public void setRes_ans_num(int res_ans_num) {
		this.res_ans_num = res_ans_num;
	}

	public String getRes_ans_id() {
		return res_ans_id;
	}

	public void setRes_ans_id(String res_ans_id) {
		this.res_ans_id = res_ans_id;
	}

	public String getRes_ans_title() {
		return res_ans_title;
	}

	public void setRes_ans_title(String res_ans_title) {
		this.res_ans_title = res_ans_title;
	}

	public String getRes_ans_content() {
		return res_ans_content;
	}

	public void setRes_ans_content(String res_ans_content) {
		this.res_ans_content = res_ans_content;
	}

	public String getRes_ans_content2() {
		return res_ans_content2;
	}

	public void setRes_ans_content2(String res_ans_content2) {
		this.res_ans_content2 = res_ans_content2;
	}

	public String getRes_ans_sort() {
		return res_ans_sort;
	}

	public void setRes_ans_sort(String res_ans_sort) {
		this.res_ans_sort = res_ans_sort;
	}

	@Override
	public String toString() {
		return "Resume [res_ans_num=" + res_ans_num + ", res_ans_id=" + res_ans_id + ", res_ans_title=" + res_ans_title
				+ ", res_ans_content=" + res_ans_content + ", res_ans_content2=" + res_ans_content2 + ", res_ans_sort="
				+ res_ans_sort + "]";
	}

}
