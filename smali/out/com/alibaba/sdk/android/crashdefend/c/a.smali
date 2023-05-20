.class public Lcom/alibaba/sdk/android/crashdefend/c/a;
.super Ljava/lang/Object;


# direct methods
.method private static a()Ljava/lang/String;
    .registers 7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/4 v1, 0x0

    :try_start_5
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/cmdline"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3b

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_30} :catch_49
    .catchall {:try_start_5 .. :try_end_30} :catchall_47

    :try_start_30
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_38} :catch_39
    .catchall {:try_start_30 .. :try_end_38} :catchall_67

    goto :goto_3c

    :catch_39
    move-exception v2

    goto :goto_4b

    :cond_3b
    move-object v0, v1

    :goto_3c
    if-eqz v0, :cond_66

    :try_start_3e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_66

    :catch_42
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_66

    :catchall_47
    move-exception v0

    goto :goto_6b

    :catch_49
    move-exception v2

    move-object v0, v1

    :goto_4b
    :try_start_4b
    const-string v3, "CrashUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProcessNameByPid error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_4b .. :try_end_61} :catchall_67

    if-eqz v0, :cond_66

    :try_start_63
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_42

    :cond_66
    :goto_66
    return-object v1

    :catchall_67
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_6b
    if-eqz v1, :cond_75

    :try_start_6d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_75

    :catch_71
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_75
    :goto_75
    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/alibaba/sdk/android/crashdefend/a/a;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/sdk/android/crashdefend/a/a;",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/crashdefend/a/b;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/alibaba/sdk/android/crashdefend/c/a;

    monitor-enter v0

    if-eqz p0, :cond_106

    if-nez p2, :cond_9

    goto/16 :goto_106

    :cond_9
    const/4 v1, 0x0

    :try_start_a
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_19

    const-string/jumbo v3, "startSerialNumber"

    iget-wide v4, p1, Lcom/alibaba/sdk/android/crashdefend/a/a;->a:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_19} :catch_de
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_ca
    .catchall {:try_start_a .. :try_end_19} :catchall_c8

    :cond_19
    :try_start_19
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_22
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/sdk/android/crashdefend/a/b;

    if-nez v3, :cond_31

    goto :goto_22

    :cond_31
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "sdkId"

    iget-object v6, v3, Lcom/alibaba/sdk/android/crashdefend/a/b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "sdkVersion"

    iget-object v6, v3, Lcom/alibaba/sdk/android/crashdefend/a/b;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "crashLimit"

    iget v6, v3, Lcom/alibaba/sdk/android/crashdefend/a/b;->c:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "crashCount"

    iget v6, v3, Lcom/alibaba/sdk/android/crashdefend/a/b;->d:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "waitTime"

    iget v6, v3, Lcom/alibaba/sdk/android/crashdefend/a/b;->e:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "registerSerialNumber"

    iget-wide v6, v3, Lcom/alibaba/sdk/android/crashdefend/a/b;->f:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v5, "startSerialNumber"

    iget-wide v6, v3, Lcom/alibaba/sdk/android/crashdefend/a/b;->g:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "restoreCount"

    iget v6, v3, Lcom/alibaba/sdk/android/crashdefend/a/b;->h:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "nextRestoreInterval"

    iget-wide v6, v3, Lcom/alibaba/sdk/android/crashdefend/a/b;->i:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_22

    :cond_7b
    const-string p2, "sdkList"

    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_80
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_80} :catch_81
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_80} :catch_de
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_80} :catch_ca
    .catchall {:try_start_19 .. :try_end_80} :catchall_c8

    goto :goto_89

    :catch_81
    move-exception p1

    :try_start_82
    const-string p2, "CrashUtils"

    const-string v3, "save sdk json fail:"

    invoke-static {p2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_89
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/alibaba/sdk/android/crashdefend/c/a;->a(Landroid/content/Context;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_9c

    const-string p2, "com_alibaba_aliyun_crash_defend_sdk_info"

    :goto_96
    invoke-virtual {p0, p2, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0

    move-object v1, p0

    goto :goto_b2

    :cond_9c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com_alibaba_aliyun_crash_defend_sdk_info_"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/alibaba/sdk/android/crashdefend/c/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_96

    :goto_b2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_b9} :catch_de
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_b9} :catch_ca
    .catchall {:try_start_82 .. :try_end_b9} :catchall_c8

    if-eqz v1, :cond_f2

    :try_start_bb
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_bf
    .catchall {:try_start_bb .. :try_end_be} :catchall_103

    goto :goto_f2

    :catch_bf
    move-exception p0

    :try_start_c0
    const-string p1, "CrashUtils"

    const-string p2, "save sdk io fail:"

    :goto_c4
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c7
    .catchall {:try_start_c0 .. :try_end_c7} :catchall_103

    goto :goto_f2

    :catchall_c8
    move-exception p0

    goto :goto_f4

    :catch_ca
    move-exception p0

    :try_start_cb
    const-string p1, "CrashUtils"

    const-string p2, "save sdk exception:"

    invoke-static {p1, p2, p0}, Lcom/alibaba/sdk/android/crashdefend/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_d2
    .catchall {:try_start_cb .. :try_end_d2} :catchall_c8

    if-eqz v1, :cond_f2

    :try_start_d4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_d8
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_103

    goto :goto_f2

    :catch_d8
    move-exception p0

    :try_start_d9
    const-string p1, "CrashUtils"

    const-string p2, "save sdk io fail:"
    :try_end_dd
    .catchall {:try_start_d9 .. :try_end_dd} :catchall_103

    goto :goto_c4

    :catch_de
    move-exception p0

    :try_start_df
    const-string p1, "CrashUtils"

    const-string p2, "save sdk io fail:"

    invoke-static {p1, p2, p0}, Lcom/alibaba/sdk/android/crashdefend/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_e6
    .catchall {:try_start_df .. :try_end_e6} :catchall_c8

    if-eqz v1, :cond_f2

    :try_start_e8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_eb} :catch_ec
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_103

    goto :goto_f2

    :catch_ec
    move-exception p0

    :try_start_ed
    const-string p1, "CrashUtils"

    const-string p2, "save sdk io fail:"
    :try_end_f1
    .catchall {:try_start_ed .. :try_end_f1} :catchall_103

    goto :goto_c4

    :cond_f2
    :goto_f2
    monitor-exit v0

    return-void

    :goto_f4
    if-eqz v1, :cond_102

    :try_start_f6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_f9} :catch_fa
    .catchall {:try_start_f6 .. :try_end_f9} :catchall_103

    goto :goto_102

    :catch_fa
    move-exception p1

    :try_start_fb
    const-string p2, "CrashUtils"

    const-string v1, "save sdk io fail:"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_102
    :goto_102
    throw p0
    :try_end_103
    .catchall {:try_start_fb .. :try_end_103} :catchall_103

    :catchall_103
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_106
    :goto_106
    monitor-exit v0

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/alibaba/sdk/android/crashdefend/c/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_26

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application gerProcessName error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CrashUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    invoke-static {p0}, Lcom/alibaba/sdk/android/crashdefend/c/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    return-object v0

    :cond_31
    invoke-static {}, Lcom/alibaba/sdk/android/crashdefend/c/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    return-object v0

    :cond_3c
    invoke-static {p0}, Lcom/alibaba/sdk/android/crashdefend/c/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;Lcom/alibaba/sdk/android/crashdefend/a/a;Ljava/util/List;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/sdk/android/crashdefend/a/a;",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/crashdefend/a/b;",
            ">;)Z"
        }
    .end annotation

    const-class v0, Lcom/alibaba/sdk/android/crashdefend/c/a;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p0, :cond_181

    if-nez p2, :cond_a

    goto/16 :goto_181

    :cond_a
    const/4 v2, 0x0

    :try_start_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_17e

    const/4 v4, -0x1

    :try_start_11
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-static {p0}, Lcom/alibaba/sdk/android/crashdefend/c/a;->a(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_23

    new-instance v6, Ljava/io/File;

    const-string v7, "com_alibaba_aliyun_crash_defend_sdk_info"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_3d

    :cond_23
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com_alibaba_aliyun_crash_defend_sdk_info_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/alibaba/sdk/android/crashdefend/c/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_3d
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_41
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_41} :catch_b6
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_41} :catch_a2
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_41} :catch_8e
    .catchall {:try_start_11 .. :try_end_41} :catchall_8b

    if-nez v5, :cond_45

    monitor-exit v0

    return v1

    :cond_45
    :try_start_45
    invoke-static {p0}, Lcom/alibaba/sdk/android/crashdefend/c/a;->a(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_53

    const-string v5, "com_alibaba_aliyun_crash_defend_sdk_info"

    :goto_4d
    invoke-virtual {p0, v5}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0

    move-object v2, p0

    goto :goto_69

    :cond_53
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com_alibaba_aliyun_crash_defend_sdk_info_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/alibaba/sdk/android/crashdefend/c/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4d

    :goto_69
    const/16 p0, 0x200

    new-array p0, p0, [B

    :goto_6d
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-eq v5, v4, :cond_7c

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p0, v1, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7b
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_7b} :catch_b6
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_7b} :catch_a2
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_7b} :catch_8e
    .catchall {:try_start_45 .. :try_end_7b} :catchall_8b

    goto :goto_6d

    :cond_7c
    if-eqz v2, :cond_ca

    :try_start_7e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82
    .catchall {:try_start_7e .. :try_end_81} :catchall_17e

    goto :goto_ca

    :catch_82
    move-exception p0

    :try_start_83
    const-string v2, "CrashUtils"

    const-string v5, "load sdk io fail:"

    :goto_87
    invoke-static {v2, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8a
    .catchall {:try_start_83 .. :try_end_8a} :catchall_17e

    goto :goto_ca

    :catchall_8b
    move-exception p0

    goto/16 :goto_16f

    :catch_8e
    move-exception p0

    :try_start_8f
    const-string v5, "CrashUtils"

    const-string v6, "load sdk exception:"

    invoke-static {v5, v6, p0}, Lcom/alibaba/sdk/android/crashdefend/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_96
    .catchall {:try_start_8f .. :try_end_96} :catchall_8b

    if-eqz v2, :cond_ca

    :try_start_98
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_9c
    .catchall {:try_start_98 .. :try_end_9b} :catchall_17e

    goto :goto_ca

    :catch_9c
    move-exception p0

    :try_start_9d
    const-string v2, "CrashUtils"

    const-string v5, "load sdk io fail:"
    :try_end_a1
    .catchall {:try_start_9d .. :try_end_a1} :catchall_17e

    goto :goto_87

    :catch_a2
    move-exception p0

    :try_start_a3
    const-string v5, "CrashUtils"

    const-string v6, "load sdk io fail:"

    invoke-static {v5, v6, p0}, Lcom/alibaba/sdk/android/crashdefend/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_aa
    .catchall {:try_start_a3 .. :try_end_aa} :catchall_8b

    if-eqz v2, :cond_ca

    :try_start_ac
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b0
    .catchall {:try_start_ac .. :try_end_af} :catchall_17e

    goto :goto_ca

    :catch_b0
    move-exception p0

    :try_start_b1
    const-string v2, "CrashUtils"

    const-string v5, "load sdk io fail:"
    :try_end_b5
    .catchall {:try_start_b1 .. :try_end_b5} :catchall_17e

    goto :goto_87

    :catch_b6
    move-exception p0

    :try_start_b7
    const-string v5, "CrashUtils"

    const-string v6, "load sdk file fail:"

    invoke-static {v5, v6, p0}, Lcom/alibaba/sdk/android/crashdefend/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_be
    .catchall {:try_start_b7 .. :try_end_be} :catchall_8b

    if-eqz v2, :cond_ca

    :try_start_c0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_c4
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_17e

    goto :goto_ca

    :catch_c4
    move-exception p0

    :try_start_c5
    const-string v2, "CrashUtils"

    const-string v5, "load sdk io fail:"

    goto :goto_87

    :cond_ca
    :goto_ca
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p0
    :try_end_ce
    .catchall {:try_start_c5 .. :try_end_ce} :catchall_17e

    if-nez p0, :cond_d2

    monitor-exit v0

    return v1

    :cond_d2
    :try_start_d2
    new-instance p0, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "startSerialNumber"

    const-wide/16 v5, 0x1

    invoke-virtual {p0, v2, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/alibaba/sdk/android/crashdefend/a/a;->a:J

    const-string p1, "sdkList"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    move p1, v1

    :goto_ed
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_16c

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_15a

    new-instance v3, Lcom/alibaba/sdk/android/crashdefend/a/b;

    invoke-direct {v3}, Lcom/alibaba/sdk/android/crashdefend/a/b;-><init>()V

    const-string v5, "sdkId"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/alibaba/sdk/android/crashdefend/a/b;->a:Ljava/lang/String;

    const-string v5, "sdkVersion"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/alibaba/sdk/android/crashdefend/a/b;->b:Ljava/lang/String;

    const-string v5, "crashLimit"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Lcom/alibaba/sdk/android/crashdefend/a/b;->c:I

    const-string v5, "crashCount"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Lcom/alibaba/sdk/android/crashdefend/a/b;->d:I

    const-string/jumbo v5, "waitTime"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Lcom/alibaba/sdk/android/crashdefend/a/b;->e:I

    const-string v5, "registerSerialNumber"

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v3, Lcom/alibaba/sdk/android/crashdefend/a/b;->f:J

    const-string/jumbo v5, "startSerialNumber"

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/alibaba/sdk/android/crashdefend/a/b;->g:J

    const-string v5, "restoreCount"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Lcom/alibaba/sdk/android/crashdefend/a/b;->h:I

    const-string v5, "nextRestoreInterval"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v5, v2

    iput-wide v5, v3, Lcom/alibaba/sdk/android/crashdefend/a/b;->i:J

    iget-object v2, v3, Lcom/alibaba/sdk/android/crashdefend/a/b;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15a

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15a
    .catch Lorg/json/JSONException; {:try_start_d2 .. :try_end_15a} :catch_166
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_15a} :catch_15d
    .catchall {:try_start_d2 .. :try_end_15a} :catchall_17e

    :cond_15a
    add-int/lit8 p1, p1, 0x1

    goto :goto_ed

    :catch_15d
    move-exception p0

    :try_start_15e
    const-string p1, "CrashUtils"

    const-string p2, "load sdk exception:"

    :goto_162
    invoke-static {p1, p2, p0}, Lcom/alibaba/sdk/android/crashdefend/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_16c

    :catch_166
    move-exception p0

    const-string p1, "CrashUtils"

    const-string p2, "load sdk json fail:"
    :try_end_16b
    .catchall {:try_start_15e .. :try_end_16b} :catchall_17e

    goto :goto_162

    :cond_16c
    :goto_16c
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :goto_16f
    if-eqz v2, :cond_17d

    :try_start_171
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_174
    .catch Ljava/io/IOException; {:try_start_171 .. :try_end_174} :catch_175
    .catchall {:try_start_171 .. :try_end_174} :catchall_17e

    goto :goto_17d

    :catch_175
    move-exception p1

    :try_start_176
    const-string p2, "CrashUtils"

    const-string v1, "load sdk io fail:"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17d
    :goto_17d
    throw p0
    :try_end_17e
    .catchall {:try_start_176 .. :try_end_17e} :catchall_17e

    :catchall_17e
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_181
    :goto_181
    monitor-exit v0

    return v1
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const-string v0, ""

    if-nez p0, :cond_d

    return-object v0

    :cond_d
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_14

    return-object v0

    :cond_14
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_1c

    iget-object v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    :cond_2e
    return-object v0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.app.ActivityThread"

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const-string v1, "currentProcessName"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_21

    goto :goto_39

    :catch_21
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProcessNameByActivityThread error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CrashUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v0

    :goto_39
    return-object p0
.end method
