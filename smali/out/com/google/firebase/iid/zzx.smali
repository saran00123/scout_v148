.class final Lcom/google/firebase/iid/zzx;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/iid/zzaa;Z)Lcom/google/firebase/iid/zzaa;
    .registers 14
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x3

    const-string v1, "FirebaseInstanceId"

    .line 67
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "Writing key to properties file"

    .line 68
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_e
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 70
    invoke-static {p3}, Lcom/google/firebase/iid/zzaa;->zza(Lcom/google/firebase/iid/zzaa;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pub"

    invoke-virtual {v2, v4, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    invoke-static {p3}, Lcom/google/firebase/iid/zzaa;->zzb(Lcom/google/firebase/iid/zzaa;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pri"

    invoke-virtual {v2, v4, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    invoke-static {p3}, Lcom/google/firebase/iid/zzaa;->zzc(Lcom/google/firebase/iid/zzaa;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cre"

    invoke-virtual {v2, v4, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    invoke-static {p1, p2}, Lcom/google/firebase/iid/zzx;->zzf(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x0

    .line 74
    :try_start_37
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 75
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_41} :catch_be

    .line 76
    :try_start_41
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_45} :catch_b4
    .catchall {:try_start_41 .. :try_end_45} :catchall_b1

    .line 78
    :try_start_45
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    const-wide/16 v4, 0x0

    if-eqz p4, :cond_8f

    .line 79
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_50} :catch_a5
    .catchall {:try_start_45 .. :try_end_50} :catchall_a2

    cmp-long p4, v6, v4

    if-lez p4, :cond_8f

    .line 80
    :try_start_54
    invoke-virtual {p1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 81
    invoke-static {p1}, Lcom/google/firebase/iid/zzx;->zza(Ljava/nio/channels/FileChannel;)Lcom/google/firebase/iid/zzaa;

    move-result-object p3
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_5b} :catch_66
    .catch Lcom/google/firebase/iid/zzz; {:try_start_54 .. :try_end_5b} :catch_64
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_5b} :catch_a5
    .catchall {:try_start_54 .. :try_end_5b} :catchall_a2

    if-eqz p1, :cond_60

    .line 82
    :try_start_5d
    invoke-static {p2, p1}, Lcom/google/firebase/iid/zzx;->zza(Ljava/lang/Throwable;Ljava/nio/channels/FileChannel;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_60} :catch_b4
    .catchall {:try_start_5d .. :try_end_60} :catchall_b1

    :cond_60
    :try_start_60
    invoke-static {p2, v3}, Lcom/google/firebase/iid/zzx;->zza(Ljava/lang/Throwable;Ljava/io/RandomAccessFile;)V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_be

    return-object p3

    :catch_64
    move-exception p4

    goto :goto_67

    :catch_66
    move-exception p4

    .line 85
    :goto_67
    :try_start_67
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 86
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x40

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Tried reading key pair before writing new one, but failed with: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_8f
    invoke-virtual {p1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 88
    invoke-static {p1}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object p4

    invoke-virtual {v2, p4, p2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_99} :catch_a5
    .catchall {:try_start_67 .. :try_end_99} :catchall_a2

    if-eqz p1, :cond_9e

    .line 90
    :try_start_9b
    invoke-static {p2, p1}, Lcom/google/firebase/iid/zzx;->zza(Ljava/lang/Throwable;Ljava/nio/channels/FileChannel;)V
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_9e} :catch_b4
    .catchall {:try_start_9b .. :try_end_9e} :catchall_b1

    :cond_9e
    :try_start_9e
    invoke-static {p2, v3}, Lcom/google/firebase/iid/zzx;->zza(Ljava/lang/Throwable;Ljava/io/RandomAccessFile;)V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_be

    return-object p3

    :catchall_a2
    move-exception p3

    move-object p4, p2

    goto :goto_ab

    :catch_a5
    move-exception p3

    .line 92
    :try_start_a6
    throw p3
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a7

    :catchall_a7
    move-exception p4

    move-object v8, p4

    move-object p4, p3

    move-object p3, v8

    :goto_ab
    if-eqz p1, :cond_b0

    .line 93
    :try_start_ad
    invoke-static {p4, p1}, Lcom/google/firebase/iid/zzx;->zza(Ljava/lang/Throwable;Ljava/nio/channels/FileChannel;)V

    :cond_b0
    throw p3
    :try_end_b1
    .catch Ljava/lang/Throwable; {:try_start_ad .. :try_end_b1} :catch_b4
    .catchall {:try_start_ad .. :try_end_b1} :catchall_b1

    :catchall_b1
    move-exception p1

    move-object p3, p2

    goto :goto_ba

    :catch_b4
    move-exception p1

    .line 94
    :try_start_b5
    throw p1
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b6

    :catchall_b6
    move-exception p3

    move-object v8, p3

    move-object p3, p1

    move-object p1, v8

    .line 95
    :goto_ba
    :try_start_ba
    invoke-static {p3, v3}, Lcom/google/firebase/iid/zzx;->zza(Ljava/lang/Throwable;Ljava/io/RandomAccessFile;)V

    throw p1
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_be} :catch_be

    :catch_be
    move-exception p1

    .line 97
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x15

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Failed to write key: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private static zza(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/google/firebase/iid/zzaa;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/iid/zzz;
        }
    .end annotation

    const-string v0, "|P|"

    .line 138
    invoke-static {p1, v0}, Lcom/google/firebase/iid/zzax;->zzd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 139
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "|K|"

    .line 141
    invoke-static {p1, v2}, Lcom/google/firebase/iid/zzax;->zzd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_27

    if-nez v2, :cond_1a

    goto :goto_27

    .line 145
    :cond_1a
    invoke-static {v0, v2}, Lcom/google/firebase/iid/zzx;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    .line 146
    invoke-static {p0, p1}, Lcom/google/firebase/iid/zzx;->zzb(Landroid/content/SharedPreferences;Ljava/lang/String;)J

    move-result-wide p0

    .line 147
    new-instance v1, Lcom/google/firebase/iid/zzaa;

    invoke-direct {v1, v0, p0, p1}, Lcom/google/firebase/iid/zzaa;-><init>(Ljava/security/KeyPair;J)V

    :cond_27
    :goto_27
    return-object v1
.end method

.method private final zza(Ljava/io/File;)Lcom/google/firebase/iid/zzaa;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/iid/zzz;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 p1, 0x0

    .line 115
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_a} :catch_34
    .catchall {:try_start_6 .. :try_end_a} :catchall_32

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x1

    move-object v1, v7

    .line 117
    :try_start_13
    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    .line 118
    invoke-static {v7}, Lcom/google/firebase/iid/zzx;->zza(Ljava/nio/channels/FileChannel;)Lcom/google/firebase/iid/zzaa;

    move-result-object v1
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_1a} :catch_26
    .catchall {:try_start_13 .. :try_end_1a} :catchall_23

    if-eqz v7, :cond_1f

    .line 119
    :try_start_1c
    invoke-static {p1, v7}, Lcom/google/firebase/iid/zzx;->zza(Ljava/lang/Throwable;Ljava/nio/channels/FileChannel;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1f} :catch_34
    .catchall {:try_start_1c .. :try_end_1f} :catchall_32

    :cond_1f
    invoke-static {p1, v0}, Lcom/google/firebase/iid/zzx;->zza(Ljava/lang/Throwable;Ljava/io/FileInputStream;)V

    return-object v1

    :catchall_23
    move-exception v1

    move-object v2, p1

    goto :goto_2c

    :catch_26
    move-exception v1

    .line 121
    :try_start_27
    throw v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_2c
    if-eqz v7, :cond_31

    .line 122
    :try_start_2e
    invoke-static {v2, v7}, Lcom/google/firebase/iid/zzx;->zza(Ljava/lang/Throwable;Ljava/nio/channels/FileChannel;)V

    :cond_31
    throw v1
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_32} :catch_34
    .catchall {:try_start_2e .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v1

    goto :goto_36

    :catch_34
    move-exception p1

    .line 123
    :try_start_35
    throw p1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_32

    .line 124
    :goto_36
    invoke-static {p1, v0}, Lcom/google/firebase/iid/zzx;->zza(Ljava/lang/Throwable;Ljava/io/FileInputStream;)V

    throw v1
.end method

.method private static zza(Ljava/nio/channels/FileChannel;)Lcom/google/firebase/iid/zzaa;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/iid/zzz;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 126
    invoke-static {p0}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string p0, "pub"

    .line 127
    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pri"

    .line 128
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_37

    if-eqz v1, :cond_37

    .line 131
    invoke-static {p0, v1}, Lcom/google/firebase/iid/zzx;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object p0

    :try_start_20
    const-string v1, "cre"

    .line 132
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_2a} :catch_30

    .line 136
    new-instance v2, Lcom/google/firebase/iid/zzaa;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/firebase/iid/zzaa;-><init>(Ljava/security/KeyPair;J)V

    return-object v2

    :catch_30
    move-exception p0

    .line 135
    new-instance v0, Lcom/google/firebase/iid/zzz;

    invoke-direct {v0, p0}, Lcom/google/firebase/iid/zzz;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 130
    :cond_37
    new-instance p0, Lcom/google/firebase/iid/zzz;

    const-string v0, "Invalid properties file"

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/zzz;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static zza(Landroid/content/Context;)V
    .registers 6

    .line 18
    invoke-static {p0}, Lcom/google/firebase/iid/zzx;->zzb(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_20

    aget-object v2, p0, v1

    .line 20
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.InstanceId"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 21
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_20
    return-void
.end method

.method private final zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/iid/zzaa;)V
    .registers 6

    const-string v0, "com.google.android.gms.appid"

    const/4 v1, 0x0

    .line 148
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 149
    :try_start_7
    invoke-static {p1, p2}, Lcom/google/firebase/iid/zzx;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/google/firebase/iid/zzaa;

    move-result-object v0

    .line 150
    invoke-virtual {p3, v0}, Lcom/google/firebase/iid/zzaa;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_f
    .catch Lcom/google/firebase/iid/zzz; {:try_start_7 .. :try_end_f} :catch_12

    if-eqz v0, :cond_12

    return-void

    :catch_12
    :cond_12
    const/4 v0, 0x3

    const-string v1, "FirebaseInstanceId"

    .line 154
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "Writing key to shared preferences"

    .line 155
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_20
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "|P|"

    .line 158
    invoke-static {p2, v0}, Lcom/google/firebase/iid/zzax;->zzd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Lcom/google/firebase/iid/zzaa;->zza(Lcom/google/firebase/iid/zzaa;)Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "|K|"

    .line 161
    invoke-static {p2, v0}, Lcom/google/firebase/iid/zzax;->zzd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Lcom/google/firebase/iid/zzaa;->zzb(Lcom/google/firebase/iid/zzaa;)Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "cre"

    .line 164
    invoke-static {p2, v0}, Lcom/google/firebase/iid/zzax;->zzd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 165
    invoke-static {p3}, Lcom/google/firebase/iid/zzaa;->zzc(Lcom/google/firebase/iid/zzaa;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    .line 166
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static synthetic zza(Ljava/lang/Throwable;Ljava/io/FileInputStream;)V
    .registers 2

    if-eqz p0, :cond_b

    .line 178
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_messaging/zzn;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void

    :cond_b
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method private static synthetic zza(Ljava/lang/Throwable;Ljava/io/RandomAccessFile;)V
    .registers 2

    if-eqz p0, :cond_b

    .line 177
    :try_start_2
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_messaging/zzn;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void

    :cond_b
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method private static synthetic zza(Ljava/lang/Throwable;Ljava/nio/channels/FileChannel;)V
    .registers 2

    if-eqz p0, :cond_b

    .line 176
    :try_start_2
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_messaging/zzn;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void

    :cond_b
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    return-void
.end method

.method private static zzb(Landroid/content/SharedPreferences;Ljava/lang/String;)J
    .registers 3

    const-string v0, "cre"

    .line 170
    invoke-static {p1, v0}, Lcom/google/firebase/iid/zzax;->zzd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 171
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 173
    :try_start_d
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_11} :catch_12

    return-wide p0

    :catch_12
    :cond_12
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static zzb(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    .line 99
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    :cond_d
    const-string v0, "FirebaseInstanceId"

    const-string v1, "noBackupFilesDir doesn\'t exist, using regular files directory instead"

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPair;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/iid/zzz;
        }
    .end annotation

    const/16 v0, 0x8

    .line 44
    :try_start_2
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 45
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_a} :catch_55

    :try_start_a
    const-string v0, "RSA"

    .line 49
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 50
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    .line 51
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    .line 52
    new-instance v0, Ljava/security/KeyPair;

    invoke-direct {v0, p0, p1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_27
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_a .. :try_end_27} :catch_2a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_27} :catch_28

    return-object v0

    :catch_28
    move-exception p0

    goto :goto_2b

    :catch_2a
    move-exception p0

    .line 54
    :goto_2b
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid key stored "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance p1, Lcom/google/firebase/iid/zzz;

    invoke-direct {p1, p0}, Lcom/google/firebase/iid/zzz;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_55
    move-exception p0

    .line 48
    new-instance p1, Lcom/google/firebase/iid/zzz;

    invoke-direct {p1, p0}, Lcom/google/firebase/iid/zzz;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method private final zzd(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzaa;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/iid/zzz;
        }
    .end annotation

    const/4 v0, 0x0

    .line 25
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/zzx;->zze(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzaa;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 27
    invoke-direct {p0, p1, p2, v1}, Lcom/google/firebase/iid/zzx;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/iid/zzaa;)V
    :try_end_a
    .catch Lcom/google/firebase/iid/zzz; {:try_start_1 .. :try_end_a} :catch_d

    return-object v1

    :cond_b
    move-object v1, v0

    goto :goto_e

    :catch_d
    move-exception v1

    :goto_e
    :try_start_e
    const-string v2, "com.google.android.gms.appid"

    const/4 v3, 0x0

    .line 33
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 34
    invoke-static {v2, p2}, Lcom/google/firebase/iid/zzx;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/google/firebase/iid/zzaa;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 37
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/google/firebase/iid/zzx;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/iid/zzaa;Z)Lcom/google/firebase/iid/zzaa;
    :try_end_1e
    .catch Lcom/google/firebase/iid/zzz; {:try_start_e .. :try_end_1e} :catch_1f

    return-object v2

    :catch_1f
    move-exception p1

    move-object v1, p1

    :cond_21
    if-nez v1, :cond_24

    return-object v0

    .line 42
    :cond_24
    throw v1
.end method

.method private final zze(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzaa;
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/iid/zzz;
        }
    .end annotation

    .line 56
    invoke-static {p1, p2}, Lcom/google/firebase/iid/zzx;->zzf(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_c

    const/4 p1, 0x0

    return-object p1

    .line 59
    :cond_c
    :try_start_c
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzx;->zza(Ljava/io/File;)Lcom/google/firebase/iid/zzaa;

    move-result-object p1
    :try_end_10
    .catch Lcom/google/firebase/iid/zzz; {:try_start_c .. :try_end_10} :catch_13
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    move-exception p2

    goto :goto_14

    :catch_13
    move-exception p2

    :goto_14
    const/4 v0, 0x3

    const-string v1, "FirebaseInstanceId"

    .line 61
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 62
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to read key from file, retrying: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_3f
    :try_start_3f
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzx;->zza(Ljava/io/File;)Lcom/google/firebase/iid/zzaa;

    move-result-object p1
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_43} :catch_44

    return-object p1

    :catch_44
    move-exception p1

    .line 65
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "IID file exists, but failed to read from it: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance p2, Lcom/google/firebase/iid/zzz;

    invoke-direct {p2, p1}, Lcom/google/firebase/iid/zzz;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method private static zzf(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "com.google.InstanceId.properties"

    goto :goto_35

    :cond_9
    :try_start_9
    const-string v0, "UTF-8"

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/16 v0, 0xb

    .line 108
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "com.google.InstanceId_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".properties"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_35
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_35} :catch_3f

    .line 113
    :goto_35
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/google/firebase/iid/zzx;->zzb(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :catch_3f
    move-exception p0

    .line 112
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method final zzb(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzaa;
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/iid/zzz;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/zzx;->zzd(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzaa;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 5
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/iid/zzx;->zzc(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzaa;

    move-result-object p1

    return-object p1
.end method

.method final zzc(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzaa;
    .registers 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 6
    new-instance v0, Lcom/google/firebase/iid/zzaa;

    .line 7
    invoke-static {}, Lcom/google/firebase/iid/zza;->zzc()Ljava/security/KeyPair;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/iid/zzaa;-><init>(Ljava/security/KeyPair;J)V

    const/4 v1, 0x1

    .line 9
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/firebase/iid/zzx;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/iid/zzaa;Z)Lcom/google/firebase/iid/zzaa;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "FirebaseInstanceId"

    if-eqz v1, :cond_29

    .line 10
    invoke-virtual {v1, v0}, Lcom/google/firebase/iid/zzaa;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 11
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_28

    const-string p1, "Loaded key after generating new one, using loaded one"

    .line 12
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return-object v1

    .line 14
    :cond_29
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string v1, "Generated new key"

    .line 15
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_34
    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/iid/zzx;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/iid/zzaa;)V

    return-object v0
.end method
