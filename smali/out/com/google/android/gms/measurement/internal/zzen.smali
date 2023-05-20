.class final Lcom/google/android/gms/measurement/internal/zzen;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzeo;

.field private final zzb:Ljava/net/URL;

.field private final zzc:[B

.field private final zzd:Lcom/google/android/gms/measurement/internal/zzel;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzeo;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzel;)V
    .registers 7
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
            "Lcom/google/android/gms/measurement/internal/zzel;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzen;->zza:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzb:Ljava/net/URL;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzc:[B

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzd:Lcom/google/android/gms/measurement/internal/zzel;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzen;->zze:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzf:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 14

    const-string v0, "Error closing HTTP compressed POST connection output stream. appId"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzen;->zza:Lcom/google/android/gms/measurement/internal/zzeo;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzav()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_9
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzen;->zza:Lcom/google/android/gms/measurement/internal/zzeo;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzb:Ljava/net/URL;

    .line 2
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzeo;->zzc(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_131
    .catchall {:try_start_9 .. :try_end_11} :catchall_f2

    :try_start_11
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzf:Ljava/util/Map;

    if-eqz v4, :cond_39

    .line 3
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_39
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzc:[B

    if-eqz v4, :cond_8a

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzen;->zza:Lcom/google/android/gms/measurement/internal/zzeo;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 5
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzc:[B

    .line 6
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzkf;->zzs([B)[B

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzen;->zza:Lcom/google/android/gms/measurement/internal/zzeo;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 7
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v5

    .line 8
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v5

    array-length v6, v4

    const-string v7, "Uploading data. size"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x1

    .line 9
    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v5, "Content-Encoding"

    const-string v7, "gzip"

    .line 10
    invoke-virtual {v3, v5, v7}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 12
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 13
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_76} :catch_ee
    .catchall {:try_start_11 .. :try_end_76} :catchall_ea

    .line 14
    :try_start_76
    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    .line 15
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_7c} :catch_83
    .catchall {:try_start_76 .. :try_end_7c} :catchall_7d

    goto :goto_8a

    :catchall_7d
    move-exception v4

    move v8, v1

    move-object v11, v2

    move-object v2, v5

    goto/16 :goto_f7

    :catch_83
    move-exception v4

    move v6, v1

    move-object v9, v2

    move-object v7, v4

    move-object v2, v5

    goto/16 :goto_137

    .line 16
    :cond_8a
    :goto_8a
    :try_start_8a
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8e} :catch_ee
    .catchall {:try_start_8a .. :try_end_8e} :catchall_ea

    .line 17
    :try_start_8e
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v11
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_92} :catch_e5
    .catchall {:try_start_8e .. :try_end_92} :catchall_e3

    .line 18
    :try_start_92
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 19
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_9b
    .catchall {:try_start_92 .. :try_end_9b} :catchall_d1

    const/16 v6, 0x400

    :try_start_9d
    new-array v6, v6, [B

    .line 20
    :goto_9f
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_a9

    .line 21
    invoke-virtual {v4, v6, v1, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9f

    .line 22
    :cond_a9
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10
    :try_end_ad
    .catchall {:try_start_9d .. :try_end_ad} :catchall_cf

    if-eqz v5, :cond_b2

    .line 23
    :try_start_af
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_dc
    .catchall {:try_start_af .. :try_end_b2} :catchall_d9

    :cond_b2
    if-eqz v3, :cond_b7

    .line 25
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzen;->zza:Lcom/google/android/gms/measurement/internal/zzeo;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzem;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzen;->zze:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzd:Lcom/google/android/gms/measurement/internal/zzel;

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v5, v1

    .line 27
    invoke-direct/range {v5 .. v12}, Lcom/google/android/gms/measurement/internal/zzem;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzek;)V

    .line 28
    :goto_cb
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfi;->zzh(Ljava/lang/Runnable;)V

    return-void

    :catchall_cf
    move-exception v1

    goto :goto_d3

    :catchall_d1
    move-exception v1

    move-object v5, v2

    :goto_d3
    if-eqz v5, :cond_d8

    .line 23
    :try_start_d5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 24
    :cond_d8
    throw v1
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d9} :catch_dc
    .catchall {:try_start_d5 .. :try_end_d9} :catchall_d9

    :catchall_d9
    move-exception v1

    move-object v4, v1

    goto :goto_f7

    :catch_dc
    move-exception v1

    move-object v4, v1

    move-object v7, v4

    move v6, v8

    move-object v9, v11

    goto/16 :goto_137

    :catchall_e3
    move-exception v4

    goto :goto_ec

    :catch_e5
    move-exception v4

    move-object v9, v2

    move-object v7, v4

    move v6, v8

    goto :goto_137

    :catchall_ea
    move-exception v4

    move v8, v1

    :goto_ec
    move-object v11, v2

    goto :goto_f7

    :catch_ee
    move-exception v4

    move v6, v1

    move-object v9, v2

    goto :goto_136

    :catchall_f2
    move-exception v3

    move-object v4, v3

    move v8, v1

    move-object v3, v2

    move-object v11, v3

    :goto_f7
    if-eqz v2, :cond_113

    .line 29
    :try_start_f9
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fc} :catch_fd

    goto :goto_113

    :catch_fd
    move-exception v1

    .line 32
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzen;->zza:Lcom/google/android/gms/measurement/internal/zzeo;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 30
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzen;->zze:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 32
    invoke-virtual {v2, v0, v5, v1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_113
    :goto_113
    if-eqz v3, :cond_118

    .line 25
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_118
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzen;->zza:Lcom/google/android/gms/measurement/internal/zzeo;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzem;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzen;->zze:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzd:Lcom/google/android/gms/measurement/internal/zzel;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v5, v1

    .line 27
    invoke-direct/range {v5 .. v12}, Lcom/google/android/gms/measurement/internal/zzem;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzek;)V

    .line 28
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfi;->zzh(Ljava/lang/Runnable;)V

    .line 33
    throw v4

    :catch_131
    move-exception v3

    move-object v4, v3

    move v6, v1

    move-object v3, v2

    move-object v9, v3

    :goto_136
    move-object v7, v4

    :goto_137
    if-eqz v2, :cond_153

    .line 29
    :try_start_139
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_13c
    .catch Ljava/io/IOException; {:try_start_139 .. :try_end_13c} :catch_13d

    goto :goto_153

    :catch_13d
    move-exception v1

    .line 24
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzen;->zza:Lcom/google/android/gms/measurement/internal/zzeo;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 30
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzen;->zze:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 32
    invoke-virtual {v2, v0, v4, v1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_153
    :goto_153
    if-eqz v3, :cond_158

    .line 25
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_158
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzen;->zza:Lcom/google/android/gms/measurement/internal/zzeo;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzem;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzen;->zze:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzd:Lcom/google/android/gms/measurement/internal/zzel;

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v3, v1

    .line 27
    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/measurement/internal/zzem;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzek;)V

    goto/16 :goto_cb
.end method
