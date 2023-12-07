import pandas as pd


def data2xls(data, savePath='./xls', xlsName='data', xlsSheetName='Sheet1'):
    df = pd.DataFrame(data)
    df.to_excel(savePath + '/' + xlsName + '.xlsx', xlsSheetName, index=False)


if __name__ == '__main__':
    data = {
        'Name': [ '张三', '李四', '王五' ],
        'Age': [ 18, 12, 21 ],
    }
    data2xls(data, xlsName='test')
    print('Done!')
