.class public Lcom/alibaba/sdk/android/tbrest/utils/GzipUtils;
.super Ljava/lang/Object;
.source "GzipUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gzip([B)[B
    .registers 5

    if-eqz p0, :cond_65

    .line 20
    array-length v0, p0

    if-nez v0, :cond_7

    goto/16 :goto_65

    :cond_7
    const/4 v0, 0x0

    .line 27
    :try_start_8
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_38
    .catchall {:try_start_8 .. :try_end_d} :catchall_35

    .line 28
    :try_start_d
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    array-length v3, p0

    invoke-direct {v2, v1, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_13} :catch_32
    .catchall {:try_start_d .. :try_end_13} :catchall_30

    .line 29
    :try_start_13
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 30
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 31
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_2e
    .catchall {:try_start_13 .. :try_end_1d} :catchall_4e

    .line 37
    :try_start_1d
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 44
    :goto_25
    :try_start_25
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_4d

    :catch_29
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4d

    :catch_2e
    move-exception p0

    goto :goto_3b

    :catchall_30
    move-exception p0

    goto :goto_50

    :catch_32
    move-exception p0

    move-object v2, v0

    goto :goto_3b

    :catchall_35
    move-exception p0

    move-object v1, v0

    goto :goto_50

    :catch_38
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    .line 33
    :goto_3b
    :try_start_3b
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_4e

    if-eqz v2, :cond_48

    .line 37
    :try_start_40
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_48
    :goto_48
    if-eqz v1, :cond_4d

    .line 44
    :try_start_4a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_29

    :cond_4d
    :goto_4d
    return-object v0

    :catchall_4e
    move-exception p0

    move-object v0, v2

    :goto_50
    if-eqz v0, :cond_5a

    .line 37
    :try_start_52
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_5a

    :catch_56
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5a
    :goto_5a
    if-eqz v1, :cond_64

    .line 44
    :try_start_5c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_64

    :catch_60
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 47
    :cond_64
    :goto_64
    throw p0

    :cond_65
    :goto_65
    return-object p0
.end method

.method public static gzipAndRc4Bytes(Ljava/lang/String;)[B
    .registers 4

    .line 100
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 103
    :try_start_6
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_23
    .catchall {:try_start_6 .. :try_end_b} :catchall_20

    :try_start_b
    const-string v1, "UTF-8"

    .line 104
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 105
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->flush()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_17} :catch_1d
    .catchall {:try_start_b .. :try_end_17} :catchall_1b

    .line 111
    :try_start_17
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_2c

    goto :goto_2c

    :catchall_1b
    move-exception p0

    goto :goto_38

    :catch_1d
    move-exception p0

    move-object v1, v2

    goto :goto_24

    :catchall_20
    move-exception p0

    move-object v2, v1

    goto :goto_38

    :catch_23
    move-exception p0

    .line 107
    :goto_24
    :try_start_24
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_20

    if-eqz v1, :cond_2c

    .line 111
    :try_start_29
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2c

    .line 116
    :catch_2c
    :cond_2c
    :goto_2c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/sdk/android/tbrest/utils/RC4;->rc4([B)[B

    move-result-object p0

    .line 118
    :try_start_34
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_37

    :catch_37
    return-object p0

    :goto_38
    if-eqz v2, :cond_3d

    .line 111
    :try_start_3a
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3d

    .line 113
    :catch_3d
    :cond_3d
    throw p0
.end method

.method public static unGzip([B)[B
    .registers 8

    const/4 v0, 0x0

    .line 60
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_57
    .catchall {:try_start_1 .. :try_end_6} :catchall_51

    .line 61
    :try_start_6
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_4d
    .catchall {:try_start_6 .. :try_end_b} :catchall_4a

    const/16 v2, 0x400

    .line 62
    :try_start_d
    new-array v2, v2, [B

    .line 64
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_47
    .catchall {:try_start_d .. :try_end_14} :catchall_43

    .line 65
    :goto_14
    :try_start_14
    array-length v4, v2

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5, v4}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_21

    .line 66
    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_14

    .line 68
    :cond_21
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 69
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_28} :catch_41
    .catchall {:try_start_14 .. :try_end_28} :catchall_78

    .line 76
    :try_start_28
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception v2

    .line 78
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    :goto_30
    :try_start_30
    invoke-virtual {p0}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 90
    :goto_38
    :try_start_38
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_77

    :catch_3c
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_77

    :catch_41
    move-exception v2

    goto :goto_5b

    :catchall_43
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    goto :goto_79

    :catch_47
    move-exception v2

    move-object v3, v0

    goto :goto_5b

    :catchall_4a
    move-exception p0

    move-object v3, v0

    goto :goto_54

    :catch_4d
    move-exception v2

    move-object p0, v0

    move-object v3, p0

    goto :goto_5b

    :catchall_51
    move-exception p0

    move-object v1, v0

    move-object v3, v1

    :goto_54
    move-object v0, p0

    move-object p0, v3

    goto :goto_79

    :catch_57
    move-exception v2

    move-object p0, v0

    move-object v1, p0

    move-object v3, v1

    .line 72
    :goto_5b
    :try_start_5b
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_78

    if-eqz v3, :cond_68

    .line 76
    :try_start_60
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_68

    :catch_64
    move-exception v2

    .line 78
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_68
    :goto_68
    if-eqz p0, :cond_72

    .line 83
    :try_start_6a
    invoke-virtual {p0}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_72

    :catch_6e
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_72
    :goto_72
    if-eqz v1, :cond_77

    .line 90
    :try_start_74
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_3c

    :cond_77
    :goto_77
    return-object v0

    :catchall_78
    move-exception v0

    :goto_79
    if-eqz v3, :cond_83

    .line 76
    :try_start_7b
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_83

    :catch_7f
    move-exception v2

    .line 78
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_83
    :goto_83
    if-eqz p0, :cond_8d

    .line 83
    :try_start_85
    invoke-virtual {p0}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_8d

    :catch_89
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8d
    :goto_8d
    if-eqz v1, :cond_97

    .line 90
    :try_start_8f
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_93

    goto :goto_97

    :catch_93
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 93
    :cond_97
    :goto_97
    throw v0
.end method
