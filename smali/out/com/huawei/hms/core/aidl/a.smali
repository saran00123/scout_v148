.class public final Lcom/huawei/hms/core/aidl/a;
.super Ljava/lang/Object;
.source "CodecLookup.java"


# direct methods
.method public static a(I)Lcom/huawei/hms/core/aidl/e;
    .registers 2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    .line 1
    new-instance p0, Lcom/huawei/hms/core/aidl/f;

    invoke-direct {p0}, Lcom/huawei/hms/core/aidl/f;-><init>()V

    return-object p0

    .line 3
    :cond_9
    new-instance p0, Lcom/huawei/hms/core/aidl/e;

    invoke-direct {p0}, Lcom/huawei/hms/core/aidl/e;-><init>()V

    return-object p0
.end method
