import { getRankList } from "../http/ApiServers"
import { HomeModelIssueListItemList } from "../model/HomeModel"
import { BaseViewModel, ResultCallback } from "./BaseViewModel"


export class RankViewModel extends BaseViewModel {
  async getRankList(rankType:string,resultCallback?:ResultCallback<HomeModelIssueListItemList[]>){
    await this.httpRequest(getRankList(rankType))
      .then((result)=>[
        resultCallback?.(result.itemList)
      ])
  }
}
