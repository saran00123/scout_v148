.class public Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;
.super Ljava/lang/Object;
.source "DefaultSettingsSpiCall.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/settings/network/SettingsSpiCall;


# static fields
.field static final ACCEPT_JSON_VALUE:Ljava/lang/String; = "application/json"

.field static final ANDROID_CLIENT_TYPE:Ljava/lang/String; = "android"

.field static final BUILD_VERSION_PARAM:Ljava/lang/String; = "build_version"

.field static final CRASHLYTICS_USER_AGENT:Ljava/lang/String; = "Crashlytics Android SDK/"

.field static final DISPLAY_VERSION_PARAM:Ljava/lang/String; = "display_version"

.field static final HEADER_ACCEPT:Ljava/lang/String; = "Accept"

.field static final HEADER_CLIENT_TYPE:Ljava/lang/String; = "X-CRASHLYTICS-API-CLIENT-TYPE"

.field static final HEADER_CLIENT_VERSION:Ljava/lang/String; = "X-CRASHLYTICS-API-CLIENT-VERSION"

.field static final HEADER_DEVICE_MODEL:Ljava/lang/String; = "X-CRASHLYTICS-DEVICE-MODEL"

.field static final HEADER_GOOGLE_APP_ID:Ljava/lang/String; = "X-CRASHLYTICS-GOOGLE-APP-ID"

.field static final HEADER_INSTALLATION_ID:Ljava/lang/String; = "X-CRASHLYTICS-INSTALLATION-ID"

.field static final HEADER_OS_BUILD_VERSION:Ljava/lang/String; = "X-CRASHLYTICS-OS-BUILD-VERSION"

.field static final HEADER_OS_DISPLAY_VERSION:Ljava/lang/String; = "X-CRASHLYTICS-OS-DISPLAY-VERSION"

.field static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field static final INSTANCE_PARAM:Ljava/lang/String; = "instance"

.field static final SOURCE_PARAM:Ljava/lang/String; = "source"


# instance fields
.field private final logger:Lcom/google/firebase/crashlytics/internal/Logger;

.field private final requestFactory:Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;)V
    .registers 4

    .line 68
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;-><init>(Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;Lcom/google/firebase/crashlytics/internal/Logger;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;Lcom/google/firebase/crashlytics/internal/Logger;)V
    .registers 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    .line 77
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->logger:Lcom/google/firebase/crashlytics/internal/Logger;

    .line 78
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->requestFactory:Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;

    .line 79
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->url:Ljava/lang/String;

    return-void

    .line 74
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "url must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private applyHeadersTo(Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;)Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;
    .registers 5

    .line 176
    iget-object v0, p2, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->googleAppId:Ljava/lang/String;

    const-string v1, "X-CRASHLYTICS-GOOGLE-APP-ID"

    invoke-direct {p0, p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->applyNonNullHeader(Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v1, "android"

    .line 177
    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->applyNonNullHeader(Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    invoke-direct {p0, p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->applyNonNullHeader(Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept"

    const-string v1, "application/json"

    .line 179
    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->applyNonNullHeader(Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p2, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->deviceModel:Ljava/lang/String;

    const-string v1, "X-CRASHLYTICS-DEVICE-MODEL"

    invoke-direct {p0, p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->applyNonNullHeader(Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p2, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->osBuildVersion:Ljava/lang/String;

    const-string v1, "X-CRASHLYTICS-OS-BUILD-VERSION"

    invoke-direct {p0, p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->applyNonNullHeader(Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p2, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->osDisplayVersion:Ljava/lang/String;

    const-string v1, "X-CRASHLYTICS-OS-DISPLAY-VERSION"

    invoke-direct {p0, p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->applyNonNullHeader(Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object p2, p2, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->installIdProvider:Lcom/google/firebase/crashlytics/internal/common/InstallIdProvider;

    .line 184
    invoke-interface {p2}, Lcom/google/firebase/crashlytics/internal/common/InstallIdProvider;->getCrashlyticsInstallId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "X-CRASHLYTICS-INSTALLATION-ID"

    .line 183
    invoke-direct {p0, p1, v0, p2}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->applyNonNullHeader(Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private applyNonNullHeader(Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p3, :cond_5

    .line 191
    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;

    :cond_5
    return-void
.end method

.method private getJsonObjectFrom(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 6

    .line 151
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception v0

    .line 153
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->logger:Lcom/google/firebase/crashlytics/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse settings JSON from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->logger:Lcom/google/firebase/crashlytics/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getQueryParamsFor(Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 161
    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->buildVersion:Ljava/lang/String;

    const-string v2, "build_version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->displayVersion:Ljava/lang/String;

    const-string v2, "display_version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->source:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "source"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->instanceId:Ljava/lang/String;

    .line 166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "instance"

    .line 167
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    return-object v0
.end method


# virtual methods
.method protected createHttpGetRequest(Ljava/util/Map;)Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->requestFactory:Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;->buildHttpGetRequest(Ljava/lang/String;Ljava/util/Map;)Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;

    move-result-object p1

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Crashlytics Android SDK/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;

    move-result-object p1

    const-string v0, "X-CRASHLYTICS-DEVELOPER-TOKEN"

    const-string v1, "470fa2b4ae81cd56ecbcda9735803434cec591fa"

    .line 95
    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;

    move-result-object p1

    return-object p1
.end method

.method handleResponse(Lcom/google/firebase/crashlytics/internal/network/HttpResponse;)Lorg/json/JSONObject;
    .registers 6

    .line 124
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->code()I

    move-result v0

    .line 125
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->logger:Lcom/google/firebase/crashlytics/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings result was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->requestWasSuccessful(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 129
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->body()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->getJsonObjectFrom(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_42

    .line 131
    :cond_29
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->logger:Lcom/google/firebase/crashlytics/internal/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to retrieve settings from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_42
    return-object p1
.end method

.method public invoke(Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;Z)Lorg/json/JSONObject;
    .registers 6

    if-eqz p2, :cond_4f

    .line 106
    :try_start_2
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->getQueryParamsFor(Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;)Ljava/util/Map;

    move-result-object p2

    .line 107
    invoke-virtual {p0, p2}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->createHttpGetRequest(Ljava/util/Map;)Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;

    move-result-object v0

    .line 108
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->applyHeadersTo(Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;)Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;

    move-result-object p1

    .line 110
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->logger:Lcom/google/firebase/crashlytics/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting settings from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->logger:Lcom/google/firebase/crashlytics/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings query params were: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;->execute()Lcom/google/firebase/crashlytics/internal/network/HttpResponse;

    move-result-object p1

    .line 114
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->handleResponse(Lcom/google/firebase/crashlytics/internal/network/HttpResponse;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_44} :catch_45

    goto :goto_4e

    :catch_45
    move-exception p1

    .line 116
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->logger:Lcom/google/firebase/crashlytics/internal/Logger;

    const-string v0, "Settings request failed."

    invoke-virtual {p2, v0, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_4e
    return-object p1

    .line 101
    :cond_4f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "An invalid data collection token was used."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method requestWasSuccessful(I)Z
    .registers 3

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_13

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_13

    const/16 v0, 0xca

    if-eq p1, v0, :cond_13

    const/16 v0, 0xcb

    if-ne p1, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method
