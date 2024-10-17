import { CommonType } from "./typeAlias/TypeAlias"

export interface HomeModel{
  issueList:HomeModel
}

export interface HomeModelIssueList{
  releaseTime:number
  type:string
  data:number
  publishTime:number
  itemList:HomeModelIssueListItemList[]
  count:number
}

export interface HomeModelIssueListItemList{
  type?:string
  data?:HomeModelIssueListItemListData
  id?:number
  adIndex?:number
  bannerList?:HomeModelIssueListItemList[]
}

export interface HomeModelIssueListItemListData{
  dataType:string
  id:number
  title:string
  description:string
  image:string
  actionUrl:string
  shade:boolean
  autoPlay:boolean
  category:string
  cover:CoverModel
  playUrl:string
  author:AuthorModel
}

export interface CoverModel{
  feed:string
  detail:string
  blurred:string
  sharing?:boolean
  homepage:string
}

export interface AuthorModel{
  id:number
  icon:string
  name:string
  description:string
  link:string
  videoNum:number
  adTrack?:CommonType
  follow: RootObjectFollow
  shield: RootObjectShield
  approvedNotReadyVideoCount:number
  ifPgc:boolean
  recSort:number
  expert:boolean
}

export interface RootObjectFollow{
  itemType:string
  itemId:number
  followed:boolean
}

export interface RootObjectShield{
  itemType:string
  itemId:number
  shielded:boolean
}