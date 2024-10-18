import { ViewStateConstant } from "../../constants/ViewStateConstant"
import { HomeModelIssueListItemList } from "../../model/HomeModel"
import { CategoryRouteParams } from "../../route/RouteParams"
import { RoutePath } from "../../route/RoutePath"
import { Router } from "../../route/Router"
import { LogUtils } from "../../utils/LogUtils"
import { CommonTopBar } from "../../views/CommonTopBar"
import { StateComponent } from "../../views/StateComponent"
import { HomeListItemComponent } from "./component/HomeListItemComponent"

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
      Column(){
        CommonTopBar({title:'首页',backButton:false,alpha:1}).align(Alignment.TopStart)
        Stack(){
          StateComponent({
            viewState:this.viewState,
            showSkeleton:true,
            retryCallback:() =>{

            }
          }){
            Refresh({refreshing: $$this.isRefreshing,offset:100,friction:100}){
              List({space:10,initialIndex:0}){
                ForEach(this.dataList,(item:HomeModelIssueListItemList,index:number)=>{
                  ListItem(){
                    HomeListItemComponent({item:item}).onClick(()=>{
                      Router.push(RoutePath.DetailPage, {
                        'id': item?.data?.id,
                        'playUrl': item?.data?.playUrl
                      } as CategoryRouteParams)
                    })
                  }
                })
              }
            }
          }
        }.layoutWeight(1)
      }
  }

  onTabSelected() {
    LogUtils.debug('onTabSelected>>>',`${this.homeTabSelected}`)
  }


}