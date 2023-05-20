.class Lcom/huawei/hms/common/internal/HmsClient$BaseAdapterCallBack;
.super Ljava/lang/Object;
.source "HmsClient.java"

# interfaces
.implements Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/common/internal/HmsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseAdapterCallBack"
.end annotation


# instance fields
.field private final callback:Lcom/huawei/hms/common/internal/AnyClient$CallBack;

.field private final hmsClient:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/huawei/hms/common/internal/HmsClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/huawei/hms/common/internal/HmsClient;Lcom/huawei/hms/common/internal/AnyClient$CallBack;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/huawei/hms/common/internal/HmsClient$BaseAdapterCallBack;->callback:Lcom/huawei/hms/common/internal/AnyClient$CallBack;

    .line 3
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/huawei/hms/common/internal/HmsClient$BaseAdapterCallBack;->hmsClient:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private doCallback(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    new-instance v0, Lcom/huawei/hms/common/internal/ResponseHeader;

    invoke-direct {v0}, Lcom/huawei/hms/common/internal/ResponseHeader;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/huawei/hms/common/internal/ResponseHeader;->fromJson(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive msg "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HmsClient"

    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ResponseHeader;->getSessionId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/huawei/hms/common/internal/HmsClient$BaseAdapterCallBack;->updateSessionId(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HmsClient$BaseAdapterCallBack;->callback:Lcom/huawei/hms/common/internal/AnyClient$CallBack;

    invoke-interface {p1, v0, p2}, Lcom/huawei/hms/common/internal/AnyClient$CallBack;->onCallback(Lcom/huawei/hms/core/aidl/IMessageEntity;Ljava/lang/String;)V

    goto :goto_47

    .line 7
    :cond_2e
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HmsClient$BaseAdapterCallBack;->callback:Lcom/huawei/hms/common/internal/AnyClient$CallBack;

    new-instance p2, Lcom/huawei/hms/common/internal/ResponseHeader;

    const/4 v0, 0x1

    const v1, 0x3611c818

    const-string v2, "response header json error"

    invoke-direct {p2, v0, v1, v2}, Lcom/huawei/hms/common/internal/ResponseHeader;-><init>(IILjava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/huawei/hms/common/internal/AnyClient$CallBack;->onCallback(Lcom/huawei/hms/core/aidl/IMessageEntity;Ljava/lang/String;)V

    :goto_47
    return-void
.end method

.method private doCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;)V
    .registers 6

    .line 8
    new-instance v0, Lcom/huawei/hms/common/internal/ResponseHeader;

    invoke-direct {v0}, Lcom/huawei/hms/common/internal/ResponseHeader;-><init>()V

    .line 9
    invoke-virtual {v0, p1}, Lcom/huawei/hms/common/internal/ResponseHeader;->fromJson(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 10
    invoke-virtual {v0, p3}, Lcom/huawei/hms/common/internal/ResponseHeader;->setParcelable(Landroid/os/Parcelable;)V

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "receive msg "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "HmsClient"

    invoke-static {p3, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ResponseHeader;->getSessionId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/huawei/hms/common/internal/HmsClient$BaseAdapterCallBack;->updateSessionId(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HmsClient$BaseAdapterCallBack;->callback:Lcom/huawei/hms/common/internal/AnyClient$CallBack;

    invoke-interface {p1, v0, p2}, Lcom/huawei/hms/common/internal/AnyClient$CallBack;->onCallback(Lcom/huawei/hms/core/aidl/IMessageEntity;Ljava/lang/String;)V

    goto :goto_4a

    .line 15
    :cond_31
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HmsClient$BaseAdapterCallBack;->callback:Lcom/huawei/hms/common/internal/AnyClient$CallBack;

    new-instance p2, Lcom/huawei/hms/common/internal/ResponseHeader;

    const/4 p3, 0x1

    const v0, 0x3611c818

    const-string v1, "response header json error"

    invoke-direct {p2, p3, v0, v1}, Lcom/huawei/hms/common/internal/ResponseHeader;-><init>(IILjava/lang/String;)V

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/huawei/hms/common/internal/AnyClient$CallBack;->onCallback(Lcom/huawei/hms/core/aidl/IMessageEntity;Ljava/lang/String;)V

    :goto_4a
    return-void
.end method

.method private updateSessionId(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HmsClient$BaseAdapterCallBack;->hmsClient:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/common/internal/HmsClient;

    if-eqz v0, :cond_d

    .line 3
    invoke-virtual {v0, p1}, Lcom/huawei/hms/common/internal/HmsClient;->updateSessionId(Ljava/lang/String;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;)V
    .registers 4

    if-nez p3, :cond_6

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/common/internal/HmsClient$BaseAdapterCallBack;->doCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 3
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/hms/common/internal/HmsClient$BaseAdapterCallBack;->doCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_9
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 6

    .line 1
    new-instance v0, Lcom/huawei/hms/common/internal/ResponseWrap;

    new-instance v1, Lcom/huawei/hms/common/internal/ResponseHeader;

    invoke-direct {v1}, Lcom/huawei/hms/common/internal/ResponseHeader;-><init>()V

    invoke-direct {v0, v1}, Lcom/huawei/hms/common/internal/ResponseWrap;-><init>(Lcom/huawei/hms/common/internal/ResponseHeader;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/huawei/hms/common/internal/ResponseWrap;->fromJson(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive msg "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HmsClient"

    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ResponseWrap;->getResponseHeader()Lcom/huawei/hms/common/internal/ResponseHeader;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/ResponseHeader;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/hms/common/internal/HmsClient$BaseAdapterCallBack;->updateSessionId(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/huawei/hms/common/internal/HmsClient$BaseAdapterCallBack;->callback:Lcom/huawei/hms/common/internal/AnyClient$CallBack;

    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ResponseWrap;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/huawei/hms/common/internal/AnyClient$CallBack;->onCallback(Lcom/huawei/hms/core/aidl/IMessageEntity;Ljava/lang/String;)V

    goto :goto_54

    .line 9
    :cond_3b
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HmsClient$BaseAdapterCallBack;->callback:Lcom/huawei/hms/common/internal/AnyClient$CallBack;

    new-instance v0, Lcom/huawei/hms/common/internal/ResponseHeader;

    const/4 v1, 0x1

    const v2, 0x3611c818

    const-string v3, "response header json error"

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/hms/common/internal/ResponseHeader;-><init>(IILjava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/huawei/hms/common/internal/AnyClient$CallBack;->onCallback(Lcom/huawei/hms/core/aidl/IMessageEntity;Ljava/lang/String;)V

    :goto_54
    return-void
.end method
