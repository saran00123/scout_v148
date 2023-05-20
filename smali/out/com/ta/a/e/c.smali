.class public Lcom/ta/a/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const-string v0, "FileUtils"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 63
    :try_start_4
    new-instance v3, Ljava/io/FileWriter;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_3a
    .catchall {:try_start_4 .. :try_end_e} :catchall_37

    .line 64
    :try_start_e
    new-instance p0, Ljava/io/BufferedWriter;

    invoke-direct {p0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_35
    .catchall {:try_start_e .. :try_end_13} :catchall_5a

    .line 65
    :try_start_13
    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_19} :catch_32
    .catchall {:try_start_13 .. :try_end_19} :catchall_2f

    const/4 p1, 0x1

    .line 74
    :try_start_1a
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_24

    :catch_1e
    move-exception p0

    .line 77
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/ta/a/e/h;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 81
    :goto_24
    :try_start_24
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_2e

    :catch_28
    move-exception p0

    .line 84
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/ta/a/e/h;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_2e
    return p1

    :catchall_2f
    move-exception p1

    move-object v1, p0

    goto :goto_5b

    :catch_32
    move-exception p1

    move-object v1, p0

    goto :goto_3c

    :catch_35
    move-exception p1

    goto :goto_3c

    :catchall_37
    move-exception p1

    move-object v3, v1

    goto :goto_5b

    :catch_3a
    move-exception p1

    move-object v3, v1

    .line 69
    :goto_3c
    :try_start_3c
    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, p0}, Lcom/ta/a/e/h;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_5a

    if-eqz v1, :cond_4d

    .line 74
    :try_start_43
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_4d

    :catch_47
    move-exception p0

    .line 77
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/ta/a/e/h;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_4d
    :goto_4d
    if-eqz v3, :cond_59

    .line 81
    :try_start_4f
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_59

    :catch_53
    move-exception p0

    .line 84
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/ta/a/e/h;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_59
    :goto_59
    return v2

    :catchall_5a
    move-exception p1

    :goto_5b
    if-eqz v1, :cond_67

    .line 74
    :try_start_5d
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_67

    :catch_61
    move-exception p0

    .line 77
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/ta/a/e/h;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_67
    :goto_67
    if-eqz v3, :cond_73

    .line 81
    :try_start_69
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_73

    :catch_6d
    move-exception p0

    .line 84
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/ta/a/e/h;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 85
    :cond_73
    :goto_73
    throw p1
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, ""

    const-string v1, "FileUtils"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 37
    :try_start_6
    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_3b
    .catchall {:try_start_6 .. :try_end_10} :catchall_39

    const/16 p0, 0x64

    .line 38
    :try_start_12
    new-array p0, p0, [C

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    :goto_19
    invoke-virtual {v4, p0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_24

    .line 42
    invoke-virtual {v3, p0, v2, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 44
    :cond_24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_28} :catch_36
    .catchall {:try_start_12 .. :try_end_28} :catchall_33

    .line 50
    :try_start_28
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_32

    :catch_2c
    move-exception v0

    .line 53
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/ta/a/e/h;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_32
    return-object p0

    :catchall_33
    move-exception p0

    move-object v3, v4

    goto :goto_4e

    :catch_36
    move-exception p0

    move-object v3, v4

    goto :goto_3c

    :catchall_39
    move-exception p0

    goto :goto_4e

    :catch_3b
    move-exception p0

    .line 46
    :goto_3c
    :try_start_3c
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v4}, Lcom/ta/a/e/h;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_39

    if-eqz v3, :cond_4d

    .line 50
    :try_start_43
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_4d

    :catch_47
    move-exception p0

    .line 53
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/ta/a/e/h;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_4d
    :goto_4d
    return-object v0

    :goto_4e
    if-eqz v3, :cond_5a

    .line 50
    :try_start_50
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_5a

    :catch_54
    move-exception v0

    .line 53
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/ta/a/e/h;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 54
    :cond_5a
    :goto_5a
    throw p0
.end method

.method public static c(Ljava/lang/String;)V
    .registers 8

    const-string v0, "FileUtils"

    const/4 v1, 0x0

    .line 19
    :try_start_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 20
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-nez v3, :cond_32

    .line 22
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    const/4 v3, 0x4

    .line 23
    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "mkdirs path"

    aput-object v6, v3, v1

    aput-object p0, v3, v4

    const-string p0, "created"

    aput-object p0, v3, v5

    const/4 p0, 0x3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, p0

    invoke-static {v0, v3}, Lcom/ta/a/e/h;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_44

    .line 25
    :cond_32
    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "path exists"

    aput-object v3, v2, v1

    aput-object p0, v2, v4

    invoke-static {v0, v2}, Lcom/ta/a/e/h;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3d} :catch_3e

    goto :goto_44

    :catch_3e
    move-exception p0

    .line 29
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/ta/a/e/h;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_44
    :goto_44
    return-void
.end method
