.class public abstract Lcom/huawei/hms/opendevice/a;
.super Ljava/lang/Object;
.source "BaseUtil.java"


# direct methods
.method public static a([B)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/huawei/secure/android/common/encrypt/utils/HexUtil;->byteArray2HexStr([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 1

    .line 2
    invoke-static {p0}, Lcom/huawei/secure/android/common/encrypt/utils/HexUtil;->hexStr2ByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method
