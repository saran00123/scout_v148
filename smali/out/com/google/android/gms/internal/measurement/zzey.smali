.class final synthetic Lcom/google/android/gms/internal/measurement/zzey;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzfo;


# instance fields
.field private final zza:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzey;->zza:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 13

    const-string v0, "HermeticFileOverrides"

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzey;->zza:Landroid/content/Context;

    sget v2, Lcom/google/android/gms/internal/measurement/zzfg;->zzc:I

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v4, "eng"

    .line 1
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    const-string/jumbo v4, "userdebug"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_2e

    :cond_1c
    const-string v2, "dev-keys"

    .line 2
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string/jumbo v2, "test-keys"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e

    goto :goto_34

    .line 1
    :cond_2e
    :goto_2e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfm;->zzc()Lcom/google/android/gms/internal/measurement/zzfm;

    move-result-object v0

    goto/16 :goto_153

    .line 3
    :cond_34
    :goto_34
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzej;->zza()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v2

    if-nez v2, :cond_44

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    .line 6
    :cond_44
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 7
    :try_start_48
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_154

    const/4 v3, 0x0

    :try_start_4c
    new-instance v4, Ljava/io/File;

    const-string v5, "phenotype_hermetic"

    .line 8
    invoke-virtual {v1, v5, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v5, "overrides.txt"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_59} :catch_69
    .catchall {:try_start_4c .. :try_end_59} :catchall_154

    .line 11
    :try_start_59
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzfm;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzfm;

    move-result-object v1

    goto :goto_73

    .line 36
    :cond_64
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfm;->zzc()Lcom/google/android/gms/internal/measurement/zzfm;

    move-result-object v1

    goto :goto_73

    :catch_69
    move-exception v1

    const-string v4, "no data dir"

    .line 9
    invoke-static {v0, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfm;->zzc()Lcom/google/android/gms/internal/measurement/zzfm;

    move-result-object v1
    :try_end_73
    .catchall {:try_start_59 .. :try_end_73} :catchall_154

    .line 10
    :goto_73
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfm;->zza()Z

    move-result v2

    if-eqz v2, :cond_14f

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfm;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    :try_start_82
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    .line 14
    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_91} :catch_148

    :try_start_91
    new-instance v4, Ljava/util/HashMap;

    .line 15
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    .line 16
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 17
    :goto_9b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_10f

    const-string v7, " "

    const/4 v8, 0x3

    .line 18
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 19
    array-length v9, v7

    if-eq v9, v8, :cond_c1

    const-string v7, "Invalid: "

    .line 20
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_b8

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_bd

    :cond_b8
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_bd
    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b

    .line 21
    :cond_c1
    aget-object v6, v7, v3

    new-instance v8, Ljava/lang/String;

    .line 22
    invoke-direct {v8, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 23
    aget-object v6, v7, v6

    new-instance v9, Ljava/lang/String;

    .line 24
    invoke-direct {v9, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-static {v9}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x2

    .line 25
    aget-object v10, v7, v9

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-nez v10, :cond_f7

    .line 26
    aget-object v7, v7, v9

    new-instance v9, Ljava/lang/String;

    .line 27
    invoke-direct {v9, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-static {v9}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 29
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v11, 0x400

    if-lt v7, v11, :cond_f4

    if-ne v10, v9, :cond_f7

    .line 30
    :cond_f4
    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_f7
    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_105

    new-instance v7, Ljava/util/HashMap;

    .line 32
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_105
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9b

    .line 34
    :cond_10f
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Parsed "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzev;

    .line 35
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/zzev;-><init>(Ljava/util/Map;)V
    :try_end_136
    .catchall {:try_start_91 .. :try_end_136} :catchall_13e

    .line 36
    :try_start_136
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_139
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_139} :catch_148

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfm;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzfm;

    move-result-object v0

    goto :goto_153

    :catchall_13e
    move-exception v0

    .line 14
    :try_start_13f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_142
    .catchall {:try_start_13f .. :try_end_142} :catchall_143

    goto :goto_147

    :catchall_143
    move-exception v1

    :try_start_144
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfz;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_147
    throw v0
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_148} :catch_148

    :catch_148
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/RuntimeException;

    .line 37
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 36
    :cond_14f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfm;->zzc()Lcom/google/android/gms/internal/measurement/zzfm;

    move-result-object v0

    :goto_153
    return-object v0

    :catchall_154
    move-exception v0

    .line 10
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 12
    throw v0
.end method
