.class public Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;
.super Ljava/lang/Object;
.source "ThirdPartyResourceParser.java"


# static fields
.field private static final API_KEY_FILE:Ljava/lang/String; = "api_key.txt"

.field public static final KEY_API_KEY:Ljava/lang/String; = "APIKey"

.field public static final KEY_API_KEY_OLD:Ljava/lang/String; = "AmazonAPIKey"

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.utils.ThirdPartyResourceParser"

.field public static final UTF8_BYTE_ORDER_MARK:Ljava/lang/String; = "\ufeff"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private final _apiKey:Ljava/lang/String;

.field private final _context:Landroid/content/Context;

.field private final _packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;->_packageName:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;->_context:Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;->parseApiKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;->_apiKey:Ljava/lang/String;

    return-void
.end method

.method private getStringValueFromMetaData(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 183
    iget-object v0, p0, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;->_context:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_49

    .line 185
    sget-object v0, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Attempting to parse API Key from meta data in Android manifest"

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :try_start_c
    iget-object v0, p0, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;->_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;->_packageName:Ljava/lang/String;

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 189
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_49

    .line 191
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_24} :catch_26

    move-object v1, p1

    goto :goto_49

    :catch_26
    move-exception v0

    .line 195
    sget-object v2, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    :goto_49
    return-object v1
.end method

.method private parseApiKey()Ljava/lang/String;
    .registers 6

    const-string v0, "Unable to get api key asset document: "

    .line 63
    iget-object v1, p0, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;->_context:Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v1, :cond_6d

    .line 68
    :try_start_7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 70
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;->getApiKeyFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_32

    .line 71
    :try_start_1f
    sget-object v3, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Attempting to parse API Key from assets directory"

    invoke-static {v3, v4}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {v1}, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_30

    if-eqz v1, :cond_2f

    .line 76
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2f
    return-object v3

    :catchall_30
    move-exception v3

    goto :goto_34

    :catchall_32
    move-exception v3

    move-object v1, v2

    :goto_34
    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 78
    :cond_39
    throw v3
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_3a} :catch_54
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_3a} :catch_3a

    :catch_3a
    move-exception v1

    .line 82
    sget-object v3, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    :catch_54
    move-exception v1

    .line 80
    sget-object v3, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    :goto_6d
    return-object v2
.end method

.method static readString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Unable to close BufferedReader: "

    const-string v1, "Unable to close InputStreamReader: "

    const/4 v2, 0x0

    .line 112
    :try_start_5
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_7a
    .catchall {:try_start_5 .. :try_end_c} :catchall_76

    .line 113
    :try_start_c
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_72
    .catchall {:try_start_c .. :try_end_11} :catchall_6b

    .line 114
    :try_start_11
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_25

    const-string/jumbo v4, "\ufeff"

    .line 115
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    const/4 v4, 0x1

    .line 117
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_25} :catch_66
    .catchall {:try_start_11 .. :try_end_25} :catchall_62

    .line 128
    :cond_25
    :try_start_25
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_42

    :catch_29
    move-exception v3

    .line 131
    sget-object v4, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_42
    :try_start_42
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_47

    goto/16 :goto_d6

    :catch_47
    move-exception p0

    .line 138
    sget-object v1, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d6

    :catchall_62
    move-exception v2

    move-object v8, v3

    move-object v3, v2

    goto :goto_6f

    :catch_66
    move-exception v4

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto :goto_7d

    :catchall_6b
    move-exception p0

    move-object v8, v3

    move-object v3, p0

    move-object p0, v2

    :goto_6f
    move-object v2, v8

    goto/16 :goto_d8

    :catch_72
    move-exception v4

    move-object p0, v2

    move-object v2, v3

    goto :goto_7c

    :catchall_76
    move-exception p0

    move-object v3, p0

    move-object p0, v2

    goto :goto_d8

    :catch_7a
    move-exception v4

    move-object p0, v2

    :goto_7c
    move-object v3, p0

    .line 122
    :goto_7d
    :try_start_7d
    sget-object v5, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable read from asset: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_7d .. :try_end_97} :catchall_d7

    if-eqz v2, :cond_b6

    .line 128
    :try_start_99
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9d

    goto :goto_b6

    :catch_9d
    move-exception v2

    .line 131
    sget-object v4, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b6
    :goto_b6
    if-eqz p0, :cond_d5

    .line 135
    :try_start_b8
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_bc

    goto :goto_d5

    :catch_bc
    move-exception p0

    .line 138
    sget-object v1, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d5
    :goto_d5
    move-object v2, v3

    :goto_d6
    return-object v2

    :catchall_d7
    move-exception v3

    :goto_d8
    if-eqz v2, :cond_f7

    .line 128
    :try_start_da
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_dd} :catch_de

    goto :goto_f7

    :catch_de
    move-exception v2

    .line 131
    sget-object v4, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f7
    :goto_f7
    if-eqz p0, :cond_116

    .line 135
    :try_start_f9
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fc} :catch_fd

    goto :goto_116

    :catch_fd
    move-exception p0

    .line 138
    sget-object v1, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_116
    :goto_116
    throw v3
.end method


# virtual methods
.method public getApiKey()Ljava/lang/String;
    .registers 3

    .line 153
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;->isApiKeyInAssest()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 155
    sget-object v0, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Unable to get API Key from Assests"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "APIKey"

    .line 156
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;->getStringValueFromMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    return-object v0

    :cond_16
    const-string v0, "AmazonAPIKey"

    .line 160
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;->getStringValueFromMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 162
    :cond_1d
    iget-object v0, p0, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;->_apiKey:Ljava/lang/String;

    return-object v0
.end method

.method protected getApiKeyFile()Ljava/lang/String;
    .registers 2

    const-string v0, "api_key.txt"

    return-object v0
.end method

.method protected getPackageName()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;->_packageName:Ljava/lang/String;

    return-object v0
.end method

.method public isApiKeyInAssest()Z
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;->_apiKey:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
