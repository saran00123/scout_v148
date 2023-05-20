.class public Lcom/huawei/hms/common/internal/ResponseHeader;
.super Ljava/lang/Object;
.source "ResponseHeader.java"

# interfaces
.implements Lcom/huawei/hms/core/aidl/IMessageEntity;
.implements Lcom/huawei/hms/common/internal/ResponseErrorCode;


# static fields
.field private static final TAG:Ljava/lang/String; = "ResponseHeader"


# instance fields
.field private api_name:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private app_id:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private error_code:I
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private error_reason:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private parcelable:Landroid/os/Parcelable;

.field private pkg_name:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private resolution:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private session_id:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private srv_name:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private status_code:I
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private transaction_id:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->app_id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->app_id:Ljava/lang/String;

    .line 5
    iput p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->status_code:I

    .line 6
    iput p2, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->error_code:I

    .line 7
    iput-object p3, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->error_reason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fromJson(Ljava/lang/String;)Z
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status_code"

    .line 2
    invoke-static {v0, p1}, Lcom/huawei/hms/utils/JsonUtil;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->status_code:I

    const-string p1, "error_code"

    .line 3
    invoke-static {v0, p1}, Lcom/huawei/hms/utils/JsonUtil;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->error_code:I

    const-string p1, "error_reason"

    .line 4
    invoke-static {v0, p1}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->error_reason:Ljava/lang/String;

    const-string p1, "srv_name"

    .line 5
    invoke-static {v0, p1}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->srv_name:Ljava/lang/String;

    const-string p1, "api_name"

    .line 6
    invoke-static {v0, p1}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->api_name:Ljava/lang/String;

    const-string p1, "app_id"

    .line 7
    invoke-static {v0, p1}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->app_id:Ljava/lang/String;

    const-string p1, "pkg_name"

    .line 8
    invoke-static {v0, p1}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->pkg_name:Ljava/lang/String;

    const-string p1, "session_id"

    .line 10
    invoke-static {v0, p1}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->session_id:Ljava/lang/String;

    const-string p1, "transaction_id"

    .line 11
    invoke-static {v0, p1}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->transaction_id:Ljava/lang/String;

    const-string p1, "resolution"

    .line 12
    invoke-static {v0, p1}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->resolution:Ljava/lang/String;
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_55} :catch_57

    const/4 p1, 0x1

    return p1

    :catch_57
    move-exception p1

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fromJson failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ResponseHeader"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getActualAppID()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->app_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_b

    return-object v1

    .line 4
    :cond_b
    iget-object v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->app_id:Ljava/lang/String;

    const-string v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5
    array-length v2, v0

    if-nez v2, :cond_17

    return-object v1

    .line 7
    :cond_17
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    const/4 v1, 0x0

    .line 8
    aget-object v0, v0, v1

    return-object v0

    .line 10
    :cond_1f
    aget-object v0, v0, v2

    return-object v0
.end method

.method public getApiName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->api_name:Ljava/lang/String;

    return-object v0
.end method

.method public getAppID()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->app_id:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->error_code:I

    return v0
.end method

.method public getErrorReason()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->error_reason:Ljava/lang/String;

    return-object v0
.end method

.method public getParcelable()Landroid/os/Parcelable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->parcelable:Landroid/os/Parcelable;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->pkg_name:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->session_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSrvName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->srv_name:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->status_code:I

    return v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->transaction_id:Ljava/lang/String;

    return-object v0
.end method

.method public hasResolution()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->parcelable:Landroid/os/Parcelable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isSuccess()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->status_code:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setApiName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->api_name:Ljava/lang/String;

    return-void
.end method

.method public setAppID(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->app_id:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->error_code:I

    return-void
.end method

.method public setErrorReason(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->error_reason:Ljava/lang/String;

    return-void
.end method

.method public setParcelable(Landroid/os/Parcelable;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->parcelable:Landroid/os/Parcelable;

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->pkg_name:Ljava/lang/String;

    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->resolution:Ljava/lang/String;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->session_id:Ljava/lang/String;

    return-void
.end method

.method public setSrvName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->srv_name:Ljava/lang/String;

    return-void
.end method

.method public setStatusCode(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->status_code:I

    return-void
.end method

.method public setTransactionId(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->transaction_id:Ljava/lang/String;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "status_code"

    .line 3
    :try_start_7
    iget v2, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->status_code:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_c} :catch_54

    const-string v1, "error_code"

    .line 4
    :try_start_e
    iget v2, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->error_code:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_13} :catch_54

    const-string v1, "error_reason"

    .line 5
    :try_start_15
    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->error_reason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1a} :catch_54

    const-string v1, "srv_name"

    .line 6
    :try_start_1c
    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->srv_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_21} :catch_54

    const-string v1, "api_name"

    .line 7
    :try_start_23
    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->api_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_28} :catch_54

    const-string v1, "app_id"

    .line 8
    :try_start_2a
    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->app_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_2f} :catch_54

    const-string v1, "pkg_name"

    .line 9
    :try_start_31
    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->pkg_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    iget-object v1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->session_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_3c} :catch_54

    if-nez v1, :cond_45

    const-string v1, "session_id"

    .line 11
    :try_start_40
    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->session_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_45} :catch_54

    :cond_45
    const-string v1, "transaction_id"

    .line 13
    :try_start_47
    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->transaction_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4c
    .catch Lorg/json/JSONException; {:try_start_47 .. :try_end_4c} :catch_54

    const-string v1, "resolution"

    .line 14
    :try_start_4e
    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->resolution:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_4e .. :try_end_53} :catch_54

    goto :goto_6f

    :catch_54
    move-exception v1

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toJson failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResponseHeader"

    invoke-static {v2, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :goto_6f
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status_code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->status_code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", error_code"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->error_code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", api_name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->api_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", app_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->app_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pkg_name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->pkg_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", session_id:*, transaction_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->transaction_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", resolution:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->resolution:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
