.class public Lcom/huawei/hms/framework/network/grs/GrsClient;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""


# instance fields
.field private grsClientGlobal:Lcom/huawei/hms/framework/network/grs/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    invoke-static {p2, p1}, Lcom/huawei/hms/framework/network/grs/d;->a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)Lcom/huawei/hms/framework/network/grs/c;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/GrsClient;->grsClientGlobal:Lcom/huawei/hms/framework/network/grs/c;

    return-void

    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "invalid init params for context is null or GrsBaseInfo instance is null Object."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public ayncGetGrsUrl(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;)V
    .registers 5

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsClient;->grsClientGlobal:Lcom/huawei/hms/framework/network/grs/c;

    if-nez v0, :cond_9

    const/4 p1, -0x8

    invoke-interface {p3, p1}, Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;->onCallBackFail(I)V

    return-void

    :cond_9
    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/hms/framework/network/grs/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;)V

    return-void
.end method

.method public ayncGetGrsUrls(Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;)V
    .registers 4

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsClient;->grsClientGlobal:Lcom/huawei/hms/framework/network/grs/c;

    if-nez v0, :cond_9

    const/4 p1, -0x8

    invoke-interface {p2, p1}, Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;->onCallBackFail(I)V

    return-void

    :cond_9
    invoke-virtual {v0, p1, p2}, Lcom/huawei/hms/framework/network/grs/c;->a(Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;)V

    return-void
.end method

.method public clearSp()V
    .registers 2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsClient;->grsClientGlobal:Lcom/huawei/hms/framework/network/grs/c;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/huawei/hms/framework/network/grs/c;->a()V

    return-void
.end method

.method public forceExpire()Z
    .registers 2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsClient;->grsClientGlobal:Lcom/huawei/hms/framework/network/grs/c;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Lcom/huawei/hms/framework/network/grs/c;->b()Z

    move-result v0

    return v0
.end method

.method public synGetGrsUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsClient;->grsClientGlobal:Lcom/huawei/hms/framework/network/grs/c;

    if-nez v0, :cond_7

    const-string p1, ""

    return-object p1

    :cond_7
    invoke-virtual {v0, p1, p2}, Lcom/huawei/hms/framework/network/grs/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synGetGrsUrls(Ljava/lang/String;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsClient;->grsClientGlobal:Lcom/huawei/hms/framework/network/grs/c;

    if-nez v0, :cond_a

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    :cond_a
    invoke-virtual {v0, p1}, Lcom/huawei/hms/framework/network/grs/c;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
