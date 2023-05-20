.class final Lcom/google/android/gms/measurement/internal/zzhq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzhr;

.field private final zzb:Ljava/net/URL;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/measurement/internal/zzfj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzhr;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzfj;[B)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/measurement/internal/zzfj;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhq;->zza:Lcom/google/android/gms/measurement/internal/zzhr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzhq;->zzb:Ljava/net/URL;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzhq;->zzd:Lcom/google/android/gms/measurement/internal/zzfj;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhq;->zzc:Ljava/lang/String;

    return-void
.end method

.method private final zzb(ILjava/lang/Exception;[BLjava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Exception;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhq;->zza:Lcom/google/android/gms/measurement/internal/zzhr;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v0

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzhp;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzhp;-><init>(Lcom/google/android/gms/measurement/internal/zzhq;ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 3
    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/zzfi;->zzh(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhq;->zza:Lcom/google/android/gms/measurement/internal/zzhr;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzav()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_7
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhq;->zza:Lcom/google/android/gms/measurement/internal/zzhr;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhq;->zzb:Ljava/net/URL;

    .line 2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzhr;->zzd(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v2
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_f} :catch_6e
    .catchall {:try_start_7 .. :try_end_f} :catchall_60

    .line 3
    :try_start_f
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_13} :catch_5a
    .catchall {:try_start_f .. :try_end_13} :catchall_54

    .line 4
    :try_start_13
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_17} :catch_51
    .catchall {:try_start_13 .. :try_end_17} :catchall_4e

    .line 5
    :try_start_17
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_42

    const/16 v7, 0x400

    :try_start_22
    new-array v7, v7, [B

    .line 7
    :goto_24
    invoke-virtual {v6, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_2e

    .line 8
    invoke-virtual {v5, v7, v0, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_24

    .line 9
    :cond_2e
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_32
    .catchall {:try_start_22 .. :try_end_32} :catchall_40

    if-eqz v6, :cond_37

    .line 10
    :try_start_34
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_4c
    .catchall {:try_start_34 .. :try_end_37} :catchall_4a

    :cond_37
    if-eqz v2, :cond_3c

    .line 12
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 13
    :cond_3c
    invoke-direct {p0, v3, v1, v0, v4}, Lcom/google/android/gms/measurement/internal/zzhq;->zzb(ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void

    :catchall_40
    move-exception v0

    goto :goto_44

    :catchall_42
    move-exception v0

    move-object v6, v1

    :goto_44
    if-eqz v6, :cond_49

    .line 10
    :try_start_46
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 11
    :cond_49
    throw v0
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4a} :catch_4c
    .catchall {:try_start_46 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception v0

    goto :goto_65

    :catch_4c
    move-exception v0

    goto :goto_73

    :catchall_4e
    move-exception v0

    move-object v4, v1

    goto :goto_65

    :catch_51
    move-exception v0

    move-object v4, v1

    goto :goto_73

    :catchall_54
    move-exception v3

    move-object v4, v1

    move-object v9, v3

    move v3, v0

    move-object v0, v9

    goto :goto_65

    :catch_5a
    move-exception v3

    move-object v4, v1

    move-object v9, v3

    move v3, v0

    move-object v0, v9

    goto :goto_73

    :catchall_60
    move-exception v2

    move v3, v0

    move-object v4, v1

    move-object v0, v2

    move-object v2, v4

    :goto_65
    if-eqz v2, :cond_6a

    .line 12
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 13
    :cond_6a
    invoke-direct {p0, v3, v1, v1, v4}, Lcom/google/android/gms/measurement/internal/zzhq;->zzb(ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 14
    throw v0

    :catch_6e
    move-exception v2

    move v3, v0

    move-object v4, v1

    move-object v0, v2

    move-object v2, v4

    :goto_73
    if-eqz v2, :cond_78

    .line 12
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 13
    :cond_78
    invoke-direct {p0, v3, v0, v1, v4}, Lcom/google/android/gms/measurement/internal/zzhq;->zzb(ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void
.end method

.method final synthetic zza(ILjava/lang/Exception;[BLjava/util/Map;)V
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhq;->zzd:Lcom/google/android/gms/measurement/internal/zzfj;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhq;->zzc:Ljava/lang/String;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzfj;->zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method
