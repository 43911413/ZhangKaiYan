import { ViewStateConstant } from "../../constants/ViewStateConstant"
import { HomeModelIssueListItemList } from "../../model/HomeModel"
import { LogUtils } from "../../utils/LogUtils"

/**
 * 首页
 * */
@Entry
@Component
export struct HomePage {
  @State viewState:string = ViewStateConstant.VIEW_STATE_LOADING
  @State isRefreshing:boolean = false
  @State dataList :HomeModelIssueListItemList[] = []
  @State showLoading:boolean = false
  @Consume @Watch('onTabSelected') homeTabSelected :number
  build() {

  }

  onTabSelected() {
    LogUtils.debug('onTabSelected>>>',`${this.homeTabSelected}`)
  }


}