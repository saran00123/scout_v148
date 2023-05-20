.class public Lcom/google/firebase/crashlytics/internal/settings/CachedSettingsIo;
.super Ljava/lang/Object;
.source "CachedSettingsIo.java"


# static fields
.field private static final SETTINGS_CACHE_FILENAME:Ljava/lang/String; = "com.crashlytics.settings.json"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/CachedSettingsIo;->context:Landroid/content/Context;

    return-void
.end method

.method private getSettingsFile()Ljava/io/File;
    .registers 4

    .line 40
    new-instance v0, Ljava/io/File;

    new-instance v1, Lcom/google/firebase/crashlytics/internal/persistence/FileStoreImpl;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/settings/CachedSettingsIo;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/firebase/crashlytics/internal/persistence/FileStoreImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/persistence/FileStoreImpl;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "com.crashlytics.settings.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public readCachedSettings()Lorg/json/JSONObject;
    .registers 7

    const-string v0, "Error while closing settings cache file."

    .line 48
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v1

    const-string v2, "Reading cached settings..."

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 54
    :try_start_c
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/settings/CachedSettingsIo;->getSettingsFile()Ljava/io/File;

    move-result-object v2

    .line 56
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 57
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_39
    .catchall {:try_start_c .. :try_end_1b} :catchall_37

    .line 58
    :try_start_1b
    invoke-static {v3}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 60
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_24} :catch_26
    .catchall {:try_start_1b .. :try_end_24} :catchall_48

    move-object v1, v3

    goto :goto_32

    :catch_26
    move-exception v2

    goto :goto_3b

    .line 62
    :cond_28
    :try_start_28
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v2

    const-string v3, "No cached settings found."

    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_31} :catch_39
    .catchall {:try_start_28 .. :try_end_31} :catchall_37

    move-object v4, v1

    .line 67
    :goto_32
    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    move-object v1, v4

    goto :goto_47

    :catchall_37
    move-exception v2

    goto :goto_4b

    :catch_39
    move-exception v2

    move-object v3, v1

    .line 65
    :goto_3b
    :try_start_3b
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v4

    const-string v5, "Failed to fetch cached settings"

    invoke-virtual {v4, v5, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_48

    .line 67
    invoke-static {v3, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    :goto_47
    return-object v1

    :catchall_48
    move-exception v1

    move-object v2, v1

    move-object v1, v3

    :goto_4b
    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 68
    throw v2
.end method

.method public writeCachedSettings(JLorg/json/JSONObject;)V
    .registers 7

    const-string v0, "Failed to close settings writer."

    .line 81
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v1

    const-string v2, "Writing settings to cache file..."

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    if-eqz p3, :cond_44

    const/4 v1, 0x0

    :try_start_e
    const-string v2, "expires_at"

    .line 87
    invoke-virtual {p3, v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 89
    new-instance p1, Ljava/io/FileWriter;

    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/settings/CachedSettingsIo;->getSettingsFile()Ljava/io/File;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1c} :catch_32
    .catchall {:try_start_e .. :try_end_1c} :catchall_30

    .line 90
    :try_start_1c
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Ljava/io/FileWriter;->flush()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_26} :catch_2d
    .catchall {:try_start_1c .. :try_end_26} :catchall_2a

    .line 95
    invoke-static {p1, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_44

    :catchall_2a
    move-exception p2

    move-object v1, p1

    goto :goto_40

    :catch_2d
    move-exception p2

    move-object v1, p1

    goto :goto_33

    :catchall_30
    move-exception p2

    goto :goto_40

    :catch_32
    move-exception p2

    .line 93
    :goto_33
    :try_start_33
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p1

    const-string p3, "Failed to cache settings"

    invoke-virtual {p1, p3, p2}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_30

    .line 95
    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_44

    :goto_40
    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 96
    throw p2

    :cond_44
    :goto_44
    return-void
.end method
