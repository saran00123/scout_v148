.class public Lcom/huawei/updatesdk/a/a/d/h/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:I = -0x1


# direct methods
.method public static a()I
    .registers 3

    sget v0, Lcom/huawei/updatesdk/a/a/d/h/d;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_29

    const-string v0, ""

    const-string v1, "ro.product.locale.language"

    invoke-static {v1, v0}, Lcom/huawei/updatesdk/a/a/d/h/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "ro.product.locale.region"

    invoke-static {v1, v0}, Lcom/huawei/updatesdk/a/a/d/h/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_26

    :cond_24
    const/4 v0, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v0, 0x1

    :goto_27
    sput v0, Lcom/huawei/updatesdk/a/a/d/h/d;->a:I

    :cond_29
    sget v0, Lcom/huawei/updatesdk/a/a/d/h/d;->a:I

    return v0
.end method
