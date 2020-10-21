/* 
Copyright (c) 2020 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Items : Codable {
	let id : Int?
	let node_id : String?
	let name : String?
	let full_name : String?
    let `private` : Bool?
	let owner : Owner?
	let html_url : String?
	let description : String?
	let fork : Bool?
	let url : String?
	let forks_url : String?
	//let keys_urls_url : String?
	let collaborators_url : String?
	let teams_url : String?
	let hooks_url : String?
	let issue_events_url : String?
	let events_url : String?
	let assignees_url : String?
	let branches_url : String?
	let tags_url : String?
	let blobs_url : String?
	let git_tags_url : String?
	let git_refs_url : String?
	let trees_url : String?
	let statuses_url : String?
	let languages_url : String?
	let stargazers_url : String?
	let contributors_url : String?
	let subscribers_url : String?
	let subscription_url : String?
	let commits_url : String?
	let git_commits_url : String?
	let comments_url : String?
	let issue_comment_url : String?
	let contents_url : String?
	let compare_url : String?
	let merges_url : String?
	let archive_url : String?
	let downloads_url : String?
	let issues_url : String?
	let pulls_url : String?
	let milestones_url : String?
	let notifications_url : String?
	let labels_url : String?
	let releases_url : String?
	let deployments_url : String?
	let created_at : String?
	let updated_at : String?
	let pushed_at : String?
	let git_url : String?
	let ssh_url : String?
	let clone_url : String?
	let svn_url : String?
	let homepage : String?
	let size : Int?
	let stargazers_count : Int?
	let watchers_count : Int?
	let language : String?
	let has_issues : Bool?
	let has_projects : Bool?
	let has_downloads : Bool?
	let has_wiki : Bool?
	let has_pages : Bool?
	let forks_count : Int?
	let mirror_url : String?
	let archived : Bool?
	let disabled : Bool?
	let open_issues_count : Int?
	let license : License?
	let forks : Int?
	let open_issues : Int?
	let watchers : Int?
	let default_branch : String?
	let score : Double?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case node_id = "node_id"
		case name = "name"
		case full_name = "full_name"
        case `private` = "private"
		case owner = "owner"
		case html_url = "html_url"
		case description = "description"
		case fork = "fork"
		case url = "url"
		case forks_url = "forks_url"
		//case keys_url = "keys_url"
		case collaborators_url = "collaborators_url"
		case teams_url = "teams_url"
		case hooks_url = "hooks_url"
		case issue_events_url = "issue_events_url"
		case events_url = "events_url"
		case assignees_url = "assignees_url"
		case branches_url = "branches_url"
		case tags_url = "tags_url"
		case blobs_url = "blobs_url"
		case git_tags_url = "git_tags_url"
		case git_refs_url = "git_refs_url"
		case trees_url = "trees_url"
		case statuses_url = "statuses_url"
		case languages_url = "languages_url"
		case stargazers_url = "stargazers_url"
		case contributors_url = "contributors_url"
		case subscribers_url = "subscribers_url"
		case subscription_url = "subscription_url"
		case commits_url = "commits_url"
		case git_commits_url = "git_commits_url"
		case comments_url = "comments_url"
		case issue_comment_url = "issue_comment_url"
		case contents_url = "contents_url"
		case compare_url = "compare_url"
		case merges_url = "merges_url"
		case archive_url = "archive_url"
		case downloads_url = "downloads_url"
		case issues_url = "issues_url"
		case pulls_url = "pulls_url"
		case milestones_url = "milestones_url"
		case notifications_url = "notifications_url"
		case labels_url = "labels_url"
		case releases_url = "releases_url"
		case deployments_url = "deployments_url"
		case created_at = "created_at"
		case updated_at = "updated_at"
		case pushed_at = "pushed_at"
		case git_url = "git_url"
		case ssh_url = "ssh_url"
		case clone_url = "clone_url"
		case svn_url = "svn_url"
		case homepage = "homepage"
		case size = "size"
		case stargazers_count = "stargazers_count"
		case watchers_count = "watchers_count"
		case language = "language"
		case has_issues = "has_issues"
		case has_projects = "has_projects"
		case has_downloads = "has_downloads"
		case has_wiki = "has_wiki"
		case has_pages = "has_pages"
		case forks_count = "forks_count"
		case mirror_url = "mirror_url"
		case archived = "archived"
		case disabled = "disabled"
		case open_issues_count = "open_issues_count"
		case license = "license"
		case forks = "forks"
		case open_issues = "open_issues"
		case watchers = "watchers"
		case default_branch = "default_branch"
		case score = "score"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		node_id = try values.decodeIfPresent(String.self, forKey: .node_id)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		full_name = try values.decodeIfPresent(String.self, forKey: .full_name)
		`private` = try values.decodeIfPresent(Bool.self, forKey: .private)
		owner = try values.decodeIfPresent(Owner.self, forKey: .owner)
		html_url = try values.decodeIfPresent(String.self, forKey: .html_url)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		fork = try values.decodeIfPresent(Bool.self, forKey: .fork)
		url = try values.decodeIfPresent(String.self, forKey: .url)
		forks_url = try values.decodeIfPresent(String.self, forKey: .forks_url)
		//keys_url = try values.decodeIfPresent(String.self, forKey: .keys_url)
		collaborators_url = try values.decodeIfPresent(String.self, forKey: .collaborators_url)
		teams_url = try values.decodeIfPresent(String.self, forKey: .teams_url)
		hooks_url = try values.decodeIfPresent(String.self, forKey: .hooks_url)
		issue_events_url = try values.decodeIfPresent(String.self, forKey: .issue_events_url)
		events_url = try values.decodeIfPresent(String.self, forKey: .events_url)
		assignees_url = try values.decodeIfPresent(String.self, forKey: .assignees_url)
		branches_url = try values.decodeIfPresent(String.self, forKey: .branches_url)
		tags_url = try values.decodeIfPresent(String.self, forKey: .tags_url)
		blobs_url = try values.decodeIfPresent(String.self, forKey: .blobs_url)
		git_tags_url = try values.decodeIfPresent(String.self, forKey: .git_tags_url)
		git_refs_url = try values.decodeIfPresent(String.self, forKey: .git_refs_url)
		trees_url = try values.decodeIfPresent(String.self, forKey: .trees_url)
		statuses_url = try values.decodeIfPresent(String.self, forKey: .statuses_url)
		languages_url = try values.decodeIfPresent(String.self, forKey: .languages_url)
		stargazers_url = try values.decodeIfPresent(String.self, forKey: .stargazers_url)
		contributors_url = try values.decodeIfPresent(String.self, forKey: .contributors_url)
		subscribers_url = try values.decodeIfPresent(String.self, forKey: .subscribers_url)
		subscription_url = try values.decodeIfPresent(String.self, forKey: .subscription_url)
		commits_url = try values.decodeIfPresent(String.self, forKey: .commits_url)
		git_commits_url = try values.decodeIfPresent(String.self, forKey: .git_commits_url)
		comments_url = try values.decodeIfPresent(String.self, forKey: .comments_url)
		issue_comment_url = try values.decodeIfPresent(String.self, forKey: .issue_comment_url)
		contents_url = try values.decodeIfPresent(String.self, forKey: .contents_url)
		compare_url = try values.decodeIfPresent(String.self, forKey: .compare_url)
		merges_url = try values.decodeIfPresent(String.self, forKey: .merges_url)
		archive_url = try values.decodeIfPresent(String.self, forKey: .archive_url)
		downloads_url = try values.decodeIfPresent(String.self, forKey: .downloads_url)
		issues_url = try values.decodeIfPresent(String.self, forKey: .issues_url)
		pulls_url = try values.decodeIfPresent(String.self, forKey: .pulls_url)
		milestones_url = try values.decodeIfPresent(String.self, forKey: .milestones_url)
		notifications_url = try values.decodeIfPresent(String.self, forKey: .notifications_url)
		labels_url = try values.decodeIfPresent(String.self, forKey: .labels_url)
		releases_url = try values.decodeIfPresent(String.self, forKey: .releases_url)
		deployments_url = try values.decodeIfPresent(String.self, forKey: .deployments_url)
		created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
		updated_at = try values.decodeIfPresent(String.self, forKey: .updated_at)
		pushed_at = try values.decodeIfPresent(String.self, forKey: .pushed_at)
		git_url = try values.decodeIfPresent(String.self, forKey: .git_url)
		ssh_url = try values.decodeIfPresent(String.self, forKey: .ssh_url)
		clone_url = try values.decodeIfPresent(String.self, forKey: .clone_url)
		svn_url = try values.decodeIfPresent(String.self, forKey: .svn_url)
		homepage = try values.decodeIfPresent(String.self, forKey: .homepage)
		size = try values.decodeIfPresent(Int.self, forKey: .size)
		stargazers_count = try values.decodeIfPresent(Int.self, forKey: .stargazers_count)
		watchers_count = try values.decodeIfPresent(Int.self, forKey: .watchers_count)
		language = try values.decodeIfPresent(String.self, forKey: .language)
		has_issues = try values.decodeIfPresent(Bool.self, forKey: .has_issues)
		has_projects = try values.decodeIfPresent(Bool.self, forKey: .has_projects)
		has_downloads = try values.decodeIfPresent(Bool.self, forKey: .has_downloads)
		has_wiki = try values.decodeIfPresent(Bool.self, forKey: .has_wiki)
		has_pages = try values.decodeIfPresent(Bool.self, forKey: .has_pages)
		forks_count = try values.decodeIfPresent(Int.self, forKey: .forks_count)
		mirror_url = try values.decodeIfPresent(String.self, forKey: .mirror_url)
		archived = try values.decodeIfPresent(Bool.self, forKey: .archived)
		disabled = try values.decodeIfPresent(Bool.self, forKey: .disabled)
		open_issues_count = try values.decodeIfPresent(Int.self, forKey: .open_issues_count)
		license = try values.decodeIfPresent(License.self, forKey: .license)
		forks = try values.decodeIfPresent(Int.self, forKey: .forks)
		open_issues = try values.decodeIfPresent(Int.self, forKey: .open_issues)
		watchers = try values.decodeIfPresent(Int.self, forKey: .watchers)
		default_branch = try values.decodeIfPresent(String.self, forKey: .default_branch)
		score = try values.decodeIfPresent(Double.self, forKey: .score)
	}

}
