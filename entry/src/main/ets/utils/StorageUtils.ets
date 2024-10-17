import dataPreferences from '@ohos.data.preferences'
/**
 * 项目全局存储，使用ohos.data.preferences
 */

const defaultPreferenceName = 'OPEN_EYE_PREFERENCES'

type ValueType = number | string | boolean | Array<number> | Array<string> | Array<boolean>

export class StorageUtils{
  private constructor() {
  }

  static readonly context = getContext()

  /**
   * 获取Prefer实例
   * @param preferenceName
   * @returns
   */
  static async getPreferences(preferenceName: string = defaultPreferenceName) {

    return await dataPreferences.getPreferences(StorageUtils.context, preferenceName)
  }
  static async put(key :string,value:ValueType,preferenceName:string = defaultPreferenceName){

  }
}