.class public Lcom/huawei/updatesdk/b/d/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(I)Z
    .registers 2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static b(I)Z
    .registers 2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_d

    const/4 v0, 0x6

    if-eq p0, v0, :cond_d

    const/4 v0, 0x5

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method
