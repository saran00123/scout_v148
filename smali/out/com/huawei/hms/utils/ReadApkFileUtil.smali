.class public Lcom/huawei/hms/utils/ReadApkFileUtil;
.super Ljava/lang/Object;
.source "ReadApkFileUtil.java"


# static fields
.field public static final EMUI10_PK:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAx4nUogUyMCmzHhaEb420yvpw9zBs+ETzE9Qm77bGxl1Iml9JEkBkNTsUWOstLgUBajNhV+BAMVBHKMEdzoQbL5kIHkTgUVM65yewd+5+BhrcB9OQ3LHp+0BN6aLKZh71T4WvsvHFhfhQpShuGWkRkSaVGLFTHxX70kpWLzeZ3RtqiEUNIufPR2SFCH6EmecJ+HdkmBOh603IblCpGxwSWse0fDI98wZBEmV88RFaiYEgyiezLlWvXzqIj6I/xuyd5nGAegjH2y3cmoDE6CubecoB1jf4KdgACXgdiQ4Oc63MfLGTor3l6RCqeUk4APAMtyhK83jc72W1sdXMd/sj2wIDAQAB"

.field public static final EMUI11_PK:Ljava/lang/String; = "MIIBojANBgkqhkiG9w0BAQEFAAOCAY8AMIIBigKCAYEAqq2eRTMYr2JHLtvuZzfgPrgU8oatD4Rar9fOD7E00es2VhtB3vTyaT2BvYPUPA/nbkHRPak3EZX77CfWj9tzLgSHJE8XLk9C+2ESkdrxCDA6z7I8X+cBDnA05OlCJeZFjnUbjYB8SP8M3BttdrvqtVPxTkEJhchC7UXnMLaJ3kQ3ZPjN7ubjYzO4rv7EtEpqr2bX+qjnSLIZZuUXraxqfdBuhGDIYq62dNsqiyrhX1mfvA3+43N4ZIs3BdfSYII8BNFmFxf+gyf1aoq386R2kAjHcrfOOhjAbZh+R1OAGLWPCqi3E9nB8EsZkeoTW/oIP6pJvgL3bnxq+1viT2dmZyipMgcx/3N6FJqkd67j/sPMtPlHJuq8/s0silzs13jAw1WBV6tWHFkLGpkWGs8jp50wQtndtY8cCPl2XPGmdPN72agH+zsHuKqr/HOB2TuzzaO8rKlGIDQlzZcCSHB28nnvOyBVN9xzLkbYiLnHfd6bTwzNPeqjWrTnPwKyH3BPAgMBAAE="

.field public static final KEY_SIGNATURE:Ljava/lang/String; = "Signature:"

.field public static final KEY_SIGNATURE2:Ljava/lang/String; = "Signature2:"

.field public static final KEY_SIGNATURE3:Ljava/lang/String; = "Signature3:"

.field public static final a:Ljava/lang/String; = "ReadApkFileUtil"

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/BufferedReader;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 140
    :cond_4
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    return-object v0

    .line 144
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_13
    if-eq v1, v2, :cond_31

    int-to-char v1, v1

    if-ne v1, v3, :cond_19

    goto :goto_31

    .line 151
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/16 v5, 0x1000

    if-ge v4, v5, :cond_29

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    goto :goto_13

    .line 156
    :cond_29
    new-instance p0, Ljava/io/IOException;

    const-string v0, "cert line is too long!"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 161
    :cond_31
    :goto_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 163
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4e

    const-string v0, "\r"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 164
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_4e
    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    if-eqz p0, :cond_12

    const-string v1, "\\s*|\t|\r|\n"

    .line 186
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 187
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 188
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_12
    return-object v0
.end method

.method public static a([B)Ljava/util/ArrayList;
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_b

    .line 58
    sget-object p0, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    const-string v1, "manifest is null\uff01"

    invoke-static {p0, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 61
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    :try_start_10
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_4d

    .line 64
    :try_start_15
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_41

    .line 67
    :try_start_21
    invoke-static {p0, v1}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a(Ljava/io/BufferedReader;Ljava/util/ArrayList;)Z

    move-result v3
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_35

    if-nez v3, :cond_2e

    .line 72
    :try_start_27
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_41

    :try_start_2a
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_4d

    return-object v0

    :cond_2e
    :try_start_2e
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_41

    :try_start_31
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_4d

    return-object v1

    :catchall_35
    move-exception v1

    .line 73
    :try_start_36
    throw v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    :catchall_37
    move-exception v3

    .line 83
    :try_start_38
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception p0

    :try_start_3d
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_40
    throw v3
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_41

    :catchall_41
    move-exception p0

    .line 84
    :try_start_42
    throw p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_43

    :catchall_43
    move-exception v1

    .line 94
    :try_start_44
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4c

    :catchall_48
    move-exception v2

    :try_start_49
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4c
    throw v1
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4d} :catch_4d

    .line 95
    :catch_4d
    sget-object p0, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    const-string v1, "getManifestLinesArrary IOException!"

    invoke-static {p0, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a()Z
    .registers 4

    :try_start_0
    const-string v0, "30820122300d06092a864886f70d01010105000382010f003082010a0282010100a3d269348ac59923f65e8111c337605e29a1d1bc54fa96c1445050dd14d8d63b10f9f0230bb87ef348183660bedcabfdec045e235ed96935799fcdb4af5c97717ff3b0954eaf1b723225b3a00f81cbd67ce6dc5a4c07f7741ad3bf1913a480c6e267ab1740f409edd2dc33c8b718a8e30e56d9a93f321723c1d0c9ea62115f996812ceef186954595e39a19b74245542c407f7dddb1d12e6eedcfc0bd7cd945ef7255ad0fc9e796258e0fb5e52a23013d15033a32b4071b65f3f924ae5c5761e22327b4d2ae60f4158a5eb15565ba079de29b81540f5fbb3be101a95357f367fc661d797074ff3826950029c52223e4594673a24a334cae62d63b838ba3df9770203010001"

    .line 165
    invoke-static {v0}, Lcom/huawei/hms/utils/ReadApkFileUtil;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 166
    sget-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->f:Ljava/lang/String;

    const-string v2, "SHA-256"

    invoke-static {v1, v2}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 167
    sget-object v2, Lcom/huawei/hms/utils/ReadApkFileUtil;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/huawei/hms/utils/ReadApkFileUtil;->b(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "SHA256withRSA"

    .line 169
    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a([B[B[BLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 170
    sget-object v0, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    const-string v1, "verifyMDMSignatureV1 verify successful!"

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 173
    :cond_25
    sget-object v0, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    const-string v1, "verifyMDMSignatureV1 verify failure!"

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_48

    :catch_2d
    move-exception v0

    .line 176
    sget-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyMDMSignatureV1 MDM verify Exception!:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_48
    const/4 v0, 0x0

    return v0
.end method

.method public static a(Ljava/io/BufferedReader;Ljava/util/ArrayList;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-static {p0}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    if-eqz v0, :cond_33

    const-string v2, "Name: META-INF/HUAWEI.CER"

    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v1, 0x1

    .line 127
    invoke-static {p0}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v2

    :goto_14
    if-eqz v2, :cond_25

    const-string v3, "Name:"

    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    move-object v0, v2

    goto :goto_25

    .line 133
    :cond_20
    invoke-static {p0}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    .line 136
    :cond_25
    :goto_25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2e

    .line 137
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_2e
    invoke-static {p0}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_33
    return v1
.end method

.method public static a([B[B[BLjava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    invoke-static {p3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p3

    const-string v0, "RSA"

    .line 178
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    .line 179
    invoke-virtual {p3, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 180
    invoke-virtual {p3, p1}, Ljava/security/Signature;->update([B)V

    .line 181
    invoke-virtual {p3, p2}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 182
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 183
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 184
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 185
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/ArrayList;)[B
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 97
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 99
    :try_start_11
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 100
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1a
    if-ge v4, v2, :cond_32

    .line 102
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 103
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v5, v3, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_29} :catch_38
    .catchall {:try_start_11 .. :try_end_29} :catchall_36

    const-string v5, "\r\n"

    const/4 v6, 0x2

    .line 104
    :try_start_2c
    invoke-virtual {v1, v5, v3, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 106
    :cond_32
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_35} :catch_38
    .catchall {:try_start_2c .. :try_end_35} :catchall_36

    goto :goto_53

    :catchall_36
    move-exception p0

    goto :goto_5e

    :catch_38
    move-exception p0

    .line 112
    :try_start_39
    sget-object v2, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getManifestBytesbySorted Exception!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_39 .. :try_end_53} :catchall_36

    .line 110
    :goto_53
    invoke-static {v0}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 111
    invoke-static {v1}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 118
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 119
    :goto_5e
    invoke-static {v0}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 120
    invoke-static {v1}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 121
    throw p0
.end method

.method public static a(Ljava/util/zip/ZipFile;)[B
    .registers 2

    const-string v0, "META-INF/MANIFEST.MF"

    .line 1
    invoke-static {p0, v0}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a(Ljava/util/zip/ZipFile;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/zip/ZipFile;Ljava/lang/String;)[B
    .registers 9

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    .line 7
    :cond_8
    :try_start_8
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_6e
    .catchall {:try_start_8 .. :try_end_c} :catchall_66

    if-nez p0, :cond_1b

    .line 25
    invoke-static {p0}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 26
    invoke-static {v0}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 27
    invoke-static {v0}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 28
    invoke-static {v0}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    return-object v0

    .line 29
    :cond_1b
    :try_start_1b
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_63
    .catchall {:try_start_1b .. :try_end_20} :catchall_61

    const/16 v1, 0x1000

    .line 30
    :try_start_22
    new-array v2, v1, [B

    .line 31
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_29} :catch_5e
    .catchall {:try_start_22 .. :try_end_29} :catchall_59

    .line 32
    :try_start_29
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2e} :catch_56
    .catchall {:try_start_29 .. :try_end_2e} :catchall_53

    const/4 v5, 0x0

    .line 33
    :try_start_2f
    invoke-virtual {p1, v2, v5, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    :goto_33
    if-lez v6, :cond_3d

    .line 35
    invoke-virtual {v4, v2, v5, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 36
    invoke-virtual {p1, v2, v5, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    goto :goto_33

    .line 38
    :cond_3d
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 39
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_44} :catch_51
    .catchall {:try_start_2f .. :try_end_44} :catchall_9b

    .line 43
    invoke-static {p0}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 44
    invoke-static {p1}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 45
    invoke-static {v3}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 46
    invoke-static {v4}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    return-object v0

    :catch_51
    move-exception v1

    goto :goto_74

    :catchall_53
    move-exception v1

    move-object v4, v0

    goto :goto_5c

    :catch_56
    move-exception v1

    move-object v4, v0

    goto :goto_74

    :catchall_59
    move-exception v1

    move-object v3, v0

    move-object v4, v3

    :goto_5c
    move-object v0, v1

    goto :goto_9c

    :catch_5e
    move-exception v1

    move-object v3, v0

    goto :goto_73

    :catchall_61
    move-exception p1

    goto :goto_69

    :catch_63
    move-exception p1

    move-object v1, p1

    goto :goto_71

    :catchall_66
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    :goto_69
    move-object v3, v0

    move-object v4, v3

    move-object v0, p1

    move-object p1, v4

    goto :goto_9c

    :catch_6e
    move-exception p0

    move-object v1, p0

    move-object p0, v0

    :goto_71
    move-object p1, v0

    move-object v3, p1

    :goto_73
    move-object v4, v3

    .line 47
    :goto_74
    :try_start_74
    sget-object v2, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getManifestBytes Exception!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8e
    .catchall {:try_start_74 .. :try_end_8e} :catchall_9b

    .line 49
    invoke-static {p0}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 50
    invoke-static {p1}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 51
    invoke-static {v3}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 52
    invoke-static {v4}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    return-object v0

    :catchall_9b
    move-exception v0

    .line 53
    :goto_9c
    invoke-static {p0}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 54
    invoke-static {p1}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 55
    invoke-static {v3}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 56
    invoke-static {v4}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 57
    throw v0
.end method

.method public static b([B)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    if-nez p0, :cond_a

    .line 1
    sget-object p0, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    const-string v0, "manifest is null\uff01"

    invoke-static {p0, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_a
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 5
    sput-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->b:Ljava/lang/String;

    .line 6
    sput-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->c:Ljava/lang/String;

    .line 7
    sput-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->d:Ljava/lang/String;

    .line 9
    :try_start_16
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_c5
    .catchall {:try_start_16 .. :try_end_1b} :catchall_c0

    .line 10
    :try_start_1b
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_27} :catch_c6
    .catchall {:try_start_1b .. :try_end_27} :catchall_bd

    .line 11
    :try_start_27
    invoke-static {p0}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v1

    :goto_2b
    if-eqz v1, :cond_b2

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_ac

    const-string v3, "ApkHash:"

    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_39} :catch_bb
    .catchall {:try_start_27 .. :try_end_39} :catchall_b9

    const-string v4, ":"

    if-eqz v3, :cond_4d

    .line 15
    :try_start_3d
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/huawei/hms/utils/ReadApkFileUtil;->e:Ljava/lang/String;

    :cond_4d
    const-string v3, "Signature:"

    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 18
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->b:Ljava/lang/String;

    .line 19
    invoke-static {p0}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    :cond_6a
    const-string v3, "Signature2:"

    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 23
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->c:Ljava/lang/String;

    .line 24
    invoke-static {p0}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    :cond_87
    const-string v3, "Signature3:"

    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 28
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->d:Ljava/lang/String;

    .line 29
    invoke-static {p0}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    .line 32
    :cond_a4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    :cond_ac
    invoke-static {p0}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2b

    .line 37
    :cond_b2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/utils/ReadApkFileUtil;->f:Ljava/lang/String;
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_b8} :catch_bb
    .catchall {:try_start_3d .. :try_end_b8} :catchall_b9

    goto :goto_ce

    :catchall_b9
    move-exception v0

    goto :goto_d7

    :catch_bb
    move-object v1, p0

    goto :goto_c6

    :catchall_bd
    move-exception p0

    move-object v0, p0

    goto :goto_d6

    :catchall_c0
    move-exception p0

    move-object v0, p0

    move-object p0, v1

    move-object v2, p0

    goto :goto_d7

    :catch_c5
    move-object v2, v1

    .line 39
    :catch_c6
    :goto_c6
    :try_start_c6
    sget-object p0, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    const-string v0, "loadApkCert Exception!"

    invoke-static {p0, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cd
    .catchall {:try_start_c6 .. :try_end_cd} :catchall_d5

    move-object p0, v1

    .line 41
    :goto_ce
    invoke-static {v2}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 42
    invoke-static {p0}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    return-void

    :catchall_d5
    move-exception v0

    :goto_d6
    move-object p0, v1

    .line 43
    :goto_d7
    invoke-static {v2}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 44
    invoke-static {p0}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 45
    throw v0
.end method

.method public static b()Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAx4nUogUyMCmzHhaEb420yvpw9zBs+ETzE9Qm77bGxl1Iml9JEkBkNTsUWOstLgUBajNhV+BAMVBHKMEdzoQbL5kIHkTgUVM65yewd+5+BhrcB9OQ3LHp+0BN6aLKZh71T4WvsvHFhfhQpShuGWkRkSaVGLFTHxX70kpWLzeZ3RtqiEUNIufPR2SFCH6EmecJ+HdkmBOh603IblCpGxwSWse0fDI98wZBEmV88RFaiYEgyiezLlWvXzqIj6I/xuyd5nGAegjH2y3cmoDE6CubecoB1jf4KdgACXgdiQ4Oc63MfLGTor3l6RCqeUk4APAMtyhK83jc72W1sdXMd/sj2wIDAQAB"

    .line 46
    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 47
    sget-object v2, Lcom/huawei/hms/utils/ReadApkFileUtil;->f:Ljava/lang/String;

    const-string v3, "SHA-256"

    invoke-static {v2, v3}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 48
    sget-object v3, Lcom/huawei/hms/utils/ReadApkFileUtil;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/huawei/hms/utils/ReadApkFileUtil;->b(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "SHA256withRSA"

    .line 50
    invoke-static {v1, v2, v3, v4}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a([B[B[BLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 51
    sget-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    const-string v2, "verifyMDMSignatureV2 verify successful!"

    invoke-static {v1, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 54
    :cond_26
    sget-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    const-string v2, "verifyMDMSignatureV2 verify failure!"

    invoke-static {v1, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_2e

    goto :goto_49

    :catch_2e
    move-exception v1

    .line 57
    sget-object v2, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verifyMDMSignatureV2 MDM verify Exception!:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_49
    return v0
.end method

.method public static b(Ljava/lang/String;)[B
    .registers 8

    .line 58
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 59
    new-array p0, v1, [B

    return-object p0

    .line 62
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 64
    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_15

    .line 65
    div-int/lit8 v2, v0, 0x2

    goto :goto_19

    .line 67
    :cond_15
    div-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 69
    :goto_19
    new-array v2, v2, [B

    :goto_1b
    if-ge v1, v0, :cond_4e

    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x10

    if-ge v3, v0, :cond_3c

    .line 72
    div-int/lit8 v5, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    .line 73
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    add-int/2addr v6, v3

    int-to-byte v3, v6

    aput-byte v3, v2, v5

    goto :goto_4b

    .line 75
    :cond_3c
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    :goto_4b
    add-int/lit8 v1, v1, 0x2

    goto :goto_1b

    :cond_4e
    return-object v2
.end method

.method public static bytesToString([B)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/16 v0, 0x10

    .line 1
    new-array v0, v0, [C

    fill-array-data v0, :array_30

    .line 2
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    .line 4
    :goto_11
    array-length v3, p0

    if-ge v2, v3, :cond_2b

    .line 5
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    .line 6
    aget-char v5, v0, v5

    aput-char v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v3, v3, 0xf

    .line 7
    aget-char v3, v0, v3

    aput-char v3, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 9
    :cond_2b
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :array_30
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static c()Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "MIIBojANBgkqhkiG9w0BAQEFAAOCAY8AMIIBigKCAYEAqq2eRTMYr2JHLtvuZzfgPrgU8oatD4Rar9fOD7E00es2VhtB3vTyaT2BvYPUPA/nbkHRPak3EZX77CfWj9tzLgSHJE8XLk9C+2ESkdrxCDA6z7I8X+cBDnA05OlCJeZFjnUbjYB8SP8M3BttdrvqtVPxTkEJhchC7UXnMLaJ3kQ3ZPjN7ubjYzO4rv7EtEpqr2bX+qjnSLIZZuUXraxqfdBuhGDIYq62dNsqiyrhX1mfvA3+43N4ZIs3BdfSYII8BNFmFxf+gyf1aoq386R2kAjHcrfOOhjAbZh+R1OAGLWPCqi3E9nB8EsZkeoTW/oIP6pJvgL3bnxq+1viT2dmZyipMgcx/3N6FJqkd67j/sPMtPlHJuq8/s0silzs13jAw1WBV6tWHFkLGpkWGs8jp50wQtndtY8cCPl2XPGmdPN72agH+zsHuKqr/HOB2TuzzaO8rKlGIDQlzZcCSHB28nnvOyBVN9xzLkbYiLnHfd6bTwzNPeqjWrTnPwKyH3BPAgMBAAE="

    .line 1
    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 2
    sget-object v2, Lcom/huawei/hms/utils/ReadApkFileUtil;->f:Ljava/lang/String;

    const-string v3, "SHA-384"

    invoke-static {v2, v3}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 3
    sget-object v3, Lcom/huawei/hms/utils/ReadApkFileUtil;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/huawei/hms/utils/ReadApkFileUtil;->b(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "SHA384withRSA"

    .line 5
    invoke-static {v1, v2, v3, v4}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a([B[B[BLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 6
    sget-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    const-string v2, "verifyMDMSignatureV3 verify successful!"

    invoke-static {v1, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 9
    :cond_26
    sget-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    const-string v2, "verifyMDMSignatureV3 verify failure!"

    invoke-static {v1, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_2e

    goto :goto_49

    :catch_2e
    move-exception v1

    .line 12
    sget-object v2, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verifyMDMSignatureV3 MDM verify Exception!:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_49
    return v0
.end method

.method public static checkSignature()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/huawei/hms/utils/ReadApkFileUtil;->d:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 2
    invoke-static {}, Lcom/huawei/hms/utils/ReadApkFileUtil;->c()Z

    move-result v0

    return v0

    .line 5
    :cond_9
    sget-object v0, Lcom/huawei/hms/utils/ReadApkFileUtil;->c:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 6
    invoke-static {}, Lcom/huawei/hms/utils/ReadApkFileUtil;->b()Z

    move-result v0

    return v0

    .line 9
    :cond_12
    sget-object v0, Lcom/huawei/hms/utils/ReadApkFileUtil;->b:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 10
    invoke-static {}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a()Z

    move-result v0

    return v0

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public static getHmsPath(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.huawei.hwid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_16

    .line 3
    :catch_e
    sget-object p0, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    const-string v0, "HMS is not found!"

    invoke-static {p0, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_16
    return-object p0
.end method

.method public static isCertFound(Ljava/lang/String;)Z
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const-string v0, "META-INF/HUAWEI.CER"

    const-string v1, "zipFile.close Exception!"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    :try_start_6
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_43
    .catchall {:try_start_6 .. :try_end_b} :catchall_41

    .line 2
    :try_start_b
    invoke-virtual {v4, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    move p0, v2

    :goto_14
    if-eqz p0, :cond_1d

    .line 4
    invoke-static {v4, v0}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a(Ljava/util/zip/ZipFile;Ljava/lang/String;)[B

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/huawei/hms/utils/ReadApkFileUtil;->b([B)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1d} :catch_3e
    .catchall {:try_start_b .. :try_end_1d} :catchall_3b

    .line 13
    :cond_1d
    :try_start_1d
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_7e

    :catch_21
    move-exception v0

    .line 16
    sget-object v2, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7e

    :catchall_3b
    move-exception p0

    move-object v3, v4

    goto :goto_7f

    :catch_3e
    move-exception p0

    move-object v3, v4

    goto :goto_44

    :catchall_41
    move-exception p0

    goto :goto_7f

    :catch_43
    move-exception p0

    .line 17
    :goto_44
    :try_start_44
    sget-object v0, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCertFound Exception!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_44 .. :try_end_5e} :catchall_41

    if-eqz v3, :cond_7d

    .line 21
    :try_start_60
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_7d

    :catch_64
    move-exception p0

    .line 24
    sget-object v0, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7d
    :goto_7d
    move p0, v2

    :goto_7e
    return p0

    :goto_7f
    if-eqz v3, :cond_9e

    .line 25
    :try_start_81
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_9e

    :catch_85
    move-exception v0

    .line 28
    sget-object v2, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_9e
    :goto_9e
    throw p0
.end method

.method public static verifyApkHash(Ljava/lang/String;)Z
    .registers 6

    const-string v0, "close stream Exception!"

    const/4 v1, 0x0

    .line 1
    :try_start_3
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_78
    .catchall {:try_start_3 .. :try_end_8} :catchall_76

    .line 2
    :try_start_8
    invoke-static {v2}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a(Ljava/util/zip/ZipFile;)[B

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a([B)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 5
    invoke-static {v1}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a(Ljava/util/ArrayList;)[B

    move-result-object p0

    :cond_16
    const-string v1, "SHA-256"

    .line 8
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 9
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 10
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hms/utils/ReadApkFileUtil;->bytesToString([B)Ljava/lang/String;

    move-result-object p0

    .line 11
    sget-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->e:Ljava/lang/String;

    if-eqz v1, :cond_52

    sget-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->e:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_31} :catch_73
    .catchall {:try_start_8 .. :try_end_31} :catchall_70

    if-eqz p0, :cond_52

    const/4 p0, 0x1

    .line 19
    :try_start_34
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_51

    :catch_38
    move-exception v1

    .line 22
    sget-object v2, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_51
    return p0

    .line 23
    :cond_52
    :try_start_52
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_b2

    :catch_56
    move-exception p0

    .line 26
    sget-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b2

    :catchall_70
    move-exception p0

    move-object v1, v2

    goto :goto_b4

    :catch_73
    move-exception p0

    move-object v1, v2

    goto :goto_79

    :catchall_76
    move-exception p0

    goto :goto_b4

    :catch_78
    move-exception p0

    .line 27
    :goto_79
    :try_start_79
    sget-object v2, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verifyApkHash Exception!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_93
    .catchall {:try_start_79 .. :try_end_93} :catchall_76

    if-eqz v1, :cond_b2

    .line 31
    :try_start_95
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_98} :catch_99

    goto :goto_b2

    :catch_99
    move-exception p0

    .line 34
    sget-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b2
    :goto_b2
    const/4 p0, 0x0

    return p0

    :goto_b4
    if-eqz v1, :cond_d3

    .line 35
    :try_start_b6
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_b9} :catch_ba

    goto :goto_d3

    :catch_ba
    move-exception v1

    .line 38
    sget-object v2, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_d3
    :goto_d3
    throw p0
.end method
