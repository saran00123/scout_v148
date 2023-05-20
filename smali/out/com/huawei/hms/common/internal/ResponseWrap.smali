.class public Lcom/huawei/hms/common/internal/ResponseWrap;
.super Ljava/lang/Object;
.source "ResponseWrap.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResponseWrap"


# instance fields
.field private body:Ljava/lang/String;

.field private responseHeader:Lcom/huawei/hms/common/internal/ResponseHeader;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/common/internal/ResponseHeader;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->responseHeader:Lcom/huawei/hms/common/internal/ResponseHeader;

    return-void
.end method


# virtual methods
.method public fromJson(Ljava/lang/String;)Z
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->responseHeader:Lcom/huawei/hms/common/internal/ResponseHeader;

    const-string v1, "status_code"

    invoke-static {v0, v1}, Lcom/huawei/hms/utils/JsonUtil;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/huawei/hms/common/internal/ResponseHeader;->setStatusCode(I)V

    .line 4
    iget-object p1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->responseHeader:Lcom/huawei/hms/common/internal/ResponseHeader;

    const-string v1, "error_code"

    invoke-static {v0, v1}, Lcom/huawei/hms/utils/JsonUtil;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/huawei/hms/common/internal/ResponseHeader;->setErrorCode(I)V

    .line 5
    iget-object p1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->responseHeader:Lcom/huawei/hms/common/internal/ResponseHeader;

    const-string v1, "error_reason"

    invoke-static {v0, v1}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/huawei/hms/common/internal/ResponseHeader;->setErrorReason(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->responseHeader:Lcom/huawei/hms/common/internal/ResponseHeader;

    const-string v1, "srv_name"

    invoke-static {v0, v1}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/huawei/hms/common/internal/ResponseHeader;->setSrvName(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->responseHeader:Lcom/huawei/hms/common/internal/ResponseHeader;

    const-string v1, "api_name"

    invoke-static {v0, v1}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/huawei/hms/common/internal/ResponseHeader;->setApiName(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->responseHeader:Lcom/huawei/hms/common/internal/ResponseHeader;

    const-string v1, "app_id"

    invoke-static {v0, v1}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/huawei/hms/common/internal/ResponseHeader;->setAppID(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->responseHeader:Lcom/huawei/hms/common/internal/ResponseHeader;

    const-string v1, "pkg_name"

    invoke-static {v0, v1}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/huawei/hms/common/internal/ResponseHeader;->setPkgName(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->responseHeader:Lcom/huawei/hms/common/internal/ResponseHeader;

    const-string v1, "session_id"

    invoke-static {v0, v1}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/huawei/hms/common/internal/ResponseHeader;->setSessionId(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->responseHeader:Lcom/huawei/hms/common/internal/ResponseHeader;

    const-string v1, "transaction_id"

    invoke-static {v0, v1}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/huawei/hms/common/internal/ResponseHeader;->setTransactionId(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->responseHeader:Lcom/huawei/hms/common/internal/ResponseHeader;

    const-string v1, "resolution"

    invoke-static {v0, v1}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/huawei/hms/common/internal/ResponseHeader;->setResolution(Ljava/lang/String;)V

    const-string p1, "body"

    .line 14
    invoke-static {v0, p1}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->body:Ljava/lang/String;
    :try_end_7b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7b} :catch_7d

    const/4 p1, 0x1

    return p1

    :catch_7d
    move-exception p1

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fromJson failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ResponseWrap"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getBody()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->body:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->body:Ljava/lang/String;

    .line 4
    :cond_13
    iget-object v0, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseHeader()Lcom/huawei/hms/common/internal/ResponseHeader;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->responseHeader:Lcom/huawei/hms/common/internal/ResponseHeader;

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->body:Ljava/lang/String;

    return-void
.end method

.method public setResponseHeader(Lcom/huawei/hms/common/internal/ResponseHeader;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->responseHeader:Lcom/huawei/hms/common/internal/ResponseHeader;

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
    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->responseHeader:Lcom/huawei/hms/common/internal/ResponseHeader;

    invoke-virtual {v2}, Lcom/huawei/hms/common/internal/ResponseHeader;->getStatusCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_10} :catch_89

    const-string v1, "error_code"

    .line 4
    :try_start_12
    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->responseHeader:Lcom/huawei/hms/common/internal/ResponseHeader;

    invoke-virtual {v2}, Lcom/huawei/hms/common/internal/ResponseHeader;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_1b} :catch_89

    const-string v1, "error_reason"

    .line 5
    :try_start_1d
    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->responseHeader:Lcom/huawei/hms/common/internal/ResponseHeader;

    invoke-virtual {v2}, Lcom/huawei/hms/common/internal/ResponseHeader;->getErrorReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_26} :catch_89

    const-string v1, "srv_name"

    .line 6
    :try_start_28
    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->responseHeader:Lcom/huawei/hms/common/internal/ResponseHeader;

    invoke-virtual {v2}, Lcom/huawei/hms/common/internal/ResponseHeader;->getSrvName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_31} :catch_89

    const-string v1, "api_name"

    .line 7
    :try_start_33
    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->responseHeader:Lcom/huawei/hms/common/internal/ResponseHeader;

    invoke-virtual {v2}, Lcom/huawei/hms/common/internal/ResponseHeader;->getApiName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_3c} :catch_89

    const-string v1, "app_id"

    .line 8
    :try_start_3e
    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->responseHeader:Lcom/huawei/hms/common/internal/ResponseHeader;

    invoke-virtual {v2}, Lcom/huawei/hms/common/internal/ResponseHeader;->getAppID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_47
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_47} :catch_89

    const-string v1, "pkg_name"

    .line 9
    :try_start_49
    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->responseHeader:Lcom/huawei/hms/common/internal/ResponseHeader;

    invoke-virtual {v2}, Lcom/huawei/hms/common/internal/ResponseHeader;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_49 .. :try_end_52} :catch_89

    const-string v1, "transaction_id"

    .line 10
    :try_start_54
    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->responseHeader:Lcom/huawei/hms/common/internal/ResponseHeader;

    invoke-virtual {v2}, Lcom/huawei/hms/common/internal/ResponseHeader;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5d
    .catch Lorg/json/JSONException; {:try_start_54 .. :try_end_5d} :catch_89

    const-string v1, "resolution"

    .line 11
    :try_start_5f
    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->responseHeader:Lcom/huawei/hms/common/internal/ResponseHeader;

    invoke-virtual {v2}, Lcom/huawei/hms/common/internal/ResponseHeader;->getResolution()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    iget-object v1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->responseHeader:Lcom/huawei/hms/common/internal/ResponseHeader;

    invoke-virtual {v1}, Lcom/huawei/hms/common/internal/ResponseHeader;->getSessionId()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_79

    const-string v2, "session_id"

    .line 15
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    :cond_79
    iget-object v1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->body:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_7f
    .catch Lorg/json/JSONException; {:try_start_5f .. :try_end_7f} :catch_89

    if-nez v1, :cond_a4

    const-string v1, "body"

    .line 18
    :try_start_83
    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->body:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_88
    .catch Lorg/json/JSONException; {:try_start_83 .. :try_end_88} :catch_89

    goto :goto_a4

    :catch_89
    move-exception v1

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toJson failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResponseWrap"

    invoke-static {v2, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_a4
    :goto_a4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResponseWrap{body=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", responseHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->responseHeader:Lcom/huawei/hms/common/internal/ResponseHeader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
