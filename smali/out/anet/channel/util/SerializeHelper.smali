.class public Lanet/channel/util/SerializeHelper;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final TAG:Ljava/lang/String; = "awcn.SerializeHelper"

.field private static cacheDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCacheFiles(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 31
    sget-object v0, Lanet/channel/util/SerializeHelper;->cacheDir:Ljava/io/File;

    if-nez v0, :cond_10

    .line 32
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 34
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lanet/channel/util/SerializeHelper;->cacheDir:Ljava/io/File;

    .line 37
    :cond_10
    new-instance v0, Ljava/io/File;

    sget-object v1, Lanet/channel/util/SerializeHelper;->cacheDir:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static declared-synchronized persist(Ljava/io/Serializable;Ljava/io/File;)V
    .registers 4

    const-class v0, Lanet/channel/util/SerializeHelper;

    monitor-enter v0

    const/4 v1, 0x0

    .line 41
    :try_start_4
    invoke-static {p0, p1, v1}, Lanet/channel/util/SerializeHelper;->persist(Ljava/io/Serializable;Ljava/io/File;Lanet/channel/statist/StrategyStatObject;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    .line 42
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized persist(Ljava/io/Serializable;Ljava/io/File;Lanet/channel/statist/StrategyStatObject;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-class v3, Lanet/channel/util/SerializeHelper;

    monitor-enter v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_10a

    if-nez v1, :cond_11

    goto/16 :goto_10a

    .line 50
    :cond_11
    :try_start_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_115

    const/4 v8, 0x2

    const/4 v9, 0x1

    .line 57
    :try_start_17
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "-"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lanet/channel/util/SerializeHelper;->getCacheFiles(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2b} :catch_57
    .catchall {:try_start_17 .. :try_end_2b} :catchall_53

    .line 58
    :try_start_2b
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    .line 59
    invoke-virtual {v10, v9}, Ljava/io/File;->setReadable(Z)Z

    .line 60
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_36} :catch_50
    .catchall {:try_start_2b .. :try_end_36} :catchall_53

    .line 61
    :try_start_36
    new-instance v12, Ljava/io/ObjectOutputStream;

    new-instance v13, Ljava/io/BufferedOutputStream;

    invoke-direct {v13, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v12, v13}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 62
    invoke-virtual {v12, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {v12}, Ljava/io/ObjectOutputStream;->flush()V

    .line 64
    invoke-virtual {v12}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_49} :catch_4e
    .catchall {:try_start_36 .. :try_end_49} :catchall_103

    .line 74
    :try_start_49
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_115

    :catch_4c
    move v0, v9

    goto :goto_7a

    :catch_4e
    move-exception v0

    goto :goto_5a

    :catch_50
    move-exception v0

    move-object v11, v4

    goto :goto_5a

    :catchall_53
    move-exception v0

    move-object v11, v4

    goto/16 :goto_104

    :catch_57
    move-exception v0

    move-object v10, v4

    move-object v11, v10

    :goto_5a
    :try_start_5a
    const-string v12, "awcn.SerializeHelper"

    const-string v13, "persist fail. "

    .line 67
    new-array v14, v8, [Ljava/lang/Object;

    const-string v15, "file"

    aput-object v15, v14, v5

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v9

    invoke-static {v12, v13, v4, v0, v14}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    if-eqz v2, :cond_74

    const-string v12, "SerializeHelper.persist()"

    .line 69
    invoke-virtual {v2, v12, v0}, Lanet/channel/statist/StrategyStatObject;->appendErrorTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_74
    .catchall {:try_start_5a .. :try_end_74} :catchall_103

    :cond_74
    if-eqz v11, :cond_79

    .line 74
    :try_start_76
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_115

    :catch_79
    :cond_79
    move v0, v5

    .line 79
    :goto_7a
    :try_start_7a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v6

    if-eqz v2, :cond_96

    .line 81
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lanet/channel/statist/StrategyStatObject;->writeTempFilePath:Ljava/lang/String;

    .line 82
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lanet/channel/statist/StrategyStatObject;->writeStrategyFilePath:Ljava/lang/String;

    if-eqz v0, :cond_91

    move v6, v9

    goto :goto_92

    :cond_91
    move v6, v5

    .line 83
    :goto_92
    iput v6, v2, Lanet/channel/statist/StrategyStatObject;->isTempWriteSucceed:I

    .line 84
    iput-wide v11, v2, Lanet/channel/statist/StrategyStatObject;->writeCostTime:J

    :cond_96
    if-eqz v0, :cond_ef

    .line 90
    invoke-virtual {v10, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_cf

    const-string v7, "awcn.SerializeHelper"

    const-string v13, "persist end."

    const/4 v14, 0x6

    .line 92
    new-array v14, v14, [Ljava/lang/Object;

    const-string v15, "file"

    aput-object v15, v14, v5

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v15

    aput-object v15, v14, v9

    const-string/jumbo v15, "size"

    aput-object v15, v14, v8

    const/4 v8, 0x3

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v14, v8

    const/4 v1, 0x4

    const-string v8, "cost"

    aput-object v8, v14, v1

    const/4 v1, 0x5

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v14, v1

    invoke-static {v7, v13, v4, v14}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d8

    :cond_cf
    const-string v1, "awcn.SerializeHelper"

    const-string v7, "rename failed."

    .line 94
    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v1, v7, v4, v8}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_d8
    if-eqz v2, :cond_f0

    if-eqz v6, :cond_de

    move v1, v9

    goto :goto_df

    :cond_de
    move v1, v5

    .line 97
    :goto_df
    iput v1, v2, Lanet/channel/statist/StrategyStatObject;->isRenameSucceed:I

    if-eqz v6, :cond_e4

    goto :goto_e5

    :cond_e4
    move v9, v5

    .line 98
    :goto_e5
    iput v9, v2, Lanet/channel/statist/StrategyStatObject;->isSucceed:I

    .line 99
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v1

    invoke-interface {v1, v2}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V
    :try_end_ee
    .catchall {:try_start_7a .. :try_end_ee} :catchall_115

    goto :goto_f0

    :cond_ef
    move v6, v5

    :cond_f0
    :goto_f0
    if-eqz v0, :cond_f4

    if-nez v6, :cond_101

    .line 105
    :cond_f4
    :try_start_f4
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_f7} :catch_f8
    .catchall {:try_start_f4 .. :try_end_f7} :catchall_115

    goto :goto_101

    :catch_f8
    :try_start_f8
    const-string v0, "awcn.SerializeHelper"

    const-string v1, "delete failed."

    .line 107
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v4, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_101
    .catchall {:try_start_f8 .. :try_end_101} :catchall_115

    .line 110
    :cond_101
    :goto_101
    monitor-exit v3

    return-void

    :catchall_103
    move-exception v0

    :goto_104
    if-eqz v11, :cond_109

    .line 74
    :try_start_106
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_109} :catch_109
    .catchall {:try_start_106 .. :try_end_109} :catchall_115

    .line 78
    :catch_109
    :cond_109
    :try_start_109
    throw v0

    :cond_10a
    :goto_10a
    const-string v0, "awcn.SerializeHelper"

    const-string v1, "persist fail. Invalid parameter"

    .line 46
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v4, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_113
    .catchall {:try_start_109 .. :try_end_113} :catchall_115

    .line 47
    monitor-exit v3

    return-void

    :catchall_115
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static declared-synchronized restore(Ljava/io/File;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    const-class v0, Lanet/channel/util/SerializeHelper;

    monitor-enter v0

    const/4 v1, 0x0

    .line 113
    :try_start_4
    invoke-static {p0, v1}, Lanet/channel/util/SerializeHelper;->restore(Ljava/io/File;Lanet/channel/statist/StrategyStatObject;)Ljava/lang/Object;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_a

    monitor-exit v0

    return-object p0

    :catchall_a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized restore(Ljava/io/File;Lanet/channel/statist/StrategyStatObject;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Lanet/channel/statist/StrategyStatObject;",
            ")TT;"
        }
    .end annotation

    const-class v0, Lanet/channel/util/SerializeHelper;

    monitor-enter v0

    if-eqz p1, :cond_f

    .line 121
    :try_start_5
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lanet/channel/statist/StrategyStatObject;->readStrategyFilePath:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_c

    goto :goto_f

    :catchall_c
    move-exception p0

    goto/16 :goto_be

    :cond_f
    :goto_f
    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 124
    :try_start_12
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v4, :cond_35

    .line 125
    invoke-static {v2}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v4

    if-eqz v4, :cond_33

    const-string v4, "awcn.SerializeHelper"

    const-string v7, "file not exist."

    .line 126
    new-array v5, v5, [Ljava/lang/Object;

    const-string v8, "file"

    aput-object v8, v5, v1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v6

    invoke-static {v4, v7, v3, v5}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_33} :catch_99
    .catchall {:try_start_12 .. :try_end_33} :catchall_96

    .line 128
    :cond_33
    monitor-exit v0

    return-object v3

    :cond_35
    if-eqz p1, :cond_39

    .line 132
    :try_start_37
    iput v6, p1, Lanet/channel/statist/StrategyStatObject;->isFileExists:I

    .line 134
    :cond_39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 135
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_42} :catch_99
    .catchall {:try_start_37 .. :try_end_42} :catchall_96

    .line 136
    :try_start_42
    new-instance v9, Ljava/io/ObjectInputStream;

    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-direct {v10, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 137
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v10
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_50} :catch_93
    .catchall {:try_start_42 .. :try_end_50} :catchall_b7

    .line 138
    :try_start_50
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->close()V

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v7

    if-eqz p1, :cond_5e

    .line 141
    iput v6, p1, Lanet/channel/statist/StrategyStatObject;->isReadObjectSucceed:I

    .line 142
    iput-wide v11, p1, Lanet/channel/statist/StrategyStatObject;->readCostTime:J

    :cond_5e
    const-string v7, "awcn.SerializeHelper"

    const-string v8, "restore end."

    const/4 v9, 0x6

    .line 144
    new-array v9, v9, [Ljava/lang/Object;

    const-string v13, "file"

    aput-object v13, v9, v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v13

    aput-object v13, v9, v6

    const-string/jumbo v6, "size"

    aput-object v6, v9, v5

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v9, v2

    const/4 p0, 0x4

    const-string v5, "cost"

    aput-object v5, v9, p0

    const/4 p0, 0x5

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v9, p0

    invoke-static {v7, v8, v3, v9}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_8d} :catch_91
    .catchall {:try_start_50 .. :try_end_8d} :catchall_b7

    .line 155
    :goto_8d
    :try_start_8d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_b5
    .catchall {:try_start_8d .. :try_end_90} :catchall_c

    goto :goto_b5

    :catch_91
    move-exception p0

    goto :goto_9c

    :catch_93
    move-exception p0

    move-object v10, v3

    goto :goto_9c

    :catchall_96
    move-exception p0

    move-object v4, v3

    goto :goto_b8

    :catch_99
    move-exception p0

    move-object v4, v3

    move-object v10, v4

    .line 146
    :goto_9c
    :try_start_9c
    invoke-static {v2}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_ab

    const-string v2, "awcn.SerializeHelper"

    const-string v5, "restore file fail."

    .line 147
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v5, v3, p0, v1}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_ab
    if-eqz p1, :cond_b2

    const-string v1, "SerializeHelper.restore()"

    .line 150
    invoke-virtual {p1, v1, p0}, Lanet/channel/statist/StrategyStatObject;->appendErrorTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b2
    .catchall {:try_start_9c .. :try_end_b2} :catchall_b7

    :cond_b2
    if-eqz v4, :cond_b5

    goto :goto_8d

    .line 160
    :catch_b5
    :cond_b5
    :goto_b5
    monitor-exit v0

    return-object v10

    :catchall_b7
    move-exception p0

    :goto_b8
    if-eqz v4, :cond_bd

    .line 155
    :try_start_ba
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_c

    .line 159
    :catch_bd
    :cond_bd
    :try_start_bd
    throw p0
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_c

    :goto_be
    monitor-exit v0

    throw p0
.end method
