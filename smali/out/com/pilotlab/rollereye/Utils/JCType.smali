.class public Lcom/pilotlab/rollereye/Utils/JCType;
.super Ljava/lang/Object;
.source "JCType.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "\'"

    .line 184
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    const-string v1, "\'\'"

    .line 186
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_f
    return-object p0
.end method

.method public static MatchDefaultPwd(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "r0123456"

    .line 249
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static MatchEmail(Ljava/lang/String;)Z
    .registers 2

    .line 199
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static MatchFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "[\\s\\\\/:\\*\\?\\\"<>\\|]"

    .line 256
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 257
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    .line 258
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static MatchIP(Ljava/lang/String;)Z
    .registers 2

    .line 209
    sget-object v0, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static MatchPwd(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])[a-zA-Z0-9\\W]{8,30}$"

    .line 229
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static MatchUsername(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "^[\\p{L}\\d.\u2019\\-,_]{3,25}$"

    .line 219
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static MatchWiFiPwd(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "^.{8,20}$"

    .line 239
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static byte2Hex(B)Ljava/lang/String;
    .registers 3

    and-int/lit16 p0, p0, 0xff

    .line 169
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 170
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1e
    return-object p0
.end method

.method public static byte2int([BI)I
    .registers 4

    add-int/lit8 v0, p1, 0x3

    .line 63
    aget-byte v0, p0, v0

    invoke-static {v0}, Lcom/pilotlab/rollereye/Utils/JCType;->ubyteToInt(B)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x2

    .line 65
    aget-byte v1, p0, v1

    invoke-static {v1}, Lcom/pilotlab/rollereye/Utils/JCType;->ubyteToInt(B)I

    move-result v1

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    .line 67
    aget-byte v1, p0, v1

    invoke-static {v1}, Lcom/pilotlab/rollereye/Utils/JCType;->ubyteToInt(B)I

    move-result v1

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x0

    .line 69
    aget-byte p0, p0, p1

    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/JCType;->ubyteToInt(B)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public static byte2long([BI)J
    .registers 7

    add-int/lit8 v0, p1, 0x7

    .line 82
    aget-byte v0, p0, v0

    invoke-static {v0}, Lcom/pilotlab/rollereye/Utils/JCType;->ubyteToInt(B)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    or-long/2addr v0, v2

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    add-int/lit8 v3, p1, 0x6

    .line 84
    aget-byte v3, p0, v3

    invoke-static {v3}, Lcom/pilotlab/rollereye/Utils/JCType;->ubyteToInt(B)I

    move-result v3

    int-to-long v3, v3

    or-long/2addr v0, v3

    shl-long/2addr v0, v2

    add-int/lit8 v3, p1, 0x5

    .line 86
    aget-byte v3, p0, v3

    invoke-static {v3}, Lcom/pilotlab/rollereye/Utils/JCType;->ubyteToInt(B)I

    move-result v3

    int-to-long v3, v3

    or-long/2addr v0, v3

    shl-long/2addr v0, v2

    add-int/lit8 v3, p1, 0x4

    .line 88
    aget-byte v3, p0, v3

    invoke-static {v3}, Lcom/pilotlab/rollereye/Utils/JCType;->ubyteToInt(B)I

    move-result v3

    int-to-long v3, v3

    or-long/2addr v0, v3

    add-int/lit8 v3, p1, 0x3

    .line 90
    aget-byte v3, p0, v3

    invoke-static {v3}, Lcom/pilotlab/rollereye/Utils/JCType;->ubyteToInt(B)I

    move-result v3

    int-to-long v3, v3

    or-long/2addr v0, v3

    shl-long/2addr v0, v2

    add-int/lit8 v3, p1, 0x2

    .line 92
    aget-byte v3, p0, v3

    invoke-static {v3}, Lcom/pilotlab/rollereye/Utils/JCType;->ubyteToInt(B)I

    move-result v3

    int-to-long v3, v3

    or-long/2addr v0, v3

    shl-long/2addr v0, v2

    add-int/lit8 v3, p1, 0x1

    .line 94
    aget-byte v3, p0, v3

    invoke-static {v3}, Lcom/pilotlab/rollereye/Utils/JCType;->ubyteToInt(B)I

    move-result v3

    int-to-long v3, v3

    or-long/2addr v0, v3

    shl-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x0

    .line 96
    aget-byte p0, p0, p1

    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/JCType;->ubyteToInt(B)I

    move-result p0

    int-to-long p0, p0

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static byte2short([BI)S
    .registers 3

    add-int/lit8 v0, p1, 0x1

    .line 15
    aget-byte v0, p0, v0

    invoke-static {v0}, Lcom/pilotlab/rollereye/Utils/JCType;->ubyteToInt(B)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    int-to-short v0, v0

    shl-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    add-int/lit8 p1, p1, 0x0

    .line 17
    aget-byte p0, p0, p1

    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/JCType;->ubyteToInt(B)I

    move-result p0

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static byte2uint2long([BI)J
    .registers 7

    add-int/lit8 v0, p1, 0x3

    .line 42
    aget-byte v0, p0, v0

    invoke-static {v0}, Lcom/pilotlab/rollereye/Utils/JCType;->ubyteToInt(B)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    or-long/2addr v0, v2

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    add-int/lit8 v3, p1, 0x2

    .line 44
    aget-byte v3, p0, v3

    invoke-static {v3}, Lcom/pilotlab/rollereye/Utils/JCType;->ubyteToInt(B)I

    move-result v3

    int-to-long v3, v3

    or-long/2addr v0, v3

    shl-long/2addr v0, v2

    add-int/lit8 v3, p1, 0x1

    .line 46
    aget-byte v3, p0, v3

    invoke-static {v3}, Lcom/pilotlab/rollereye/Utils/JCType;->ubyteToInt(B)I

    move-result v3

    int-to-long v3, v3

    or-long/2addr v0, v3

    shl-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x0

    .line 48
    aget-byte p0, p0, p1

    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/JCType;->ubyteToInt(B)I

    move-result p0

    int-to-long p0, p0

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static byteToHexString([B)Ljava/lang/String;
    .registers 7

    .line 158
    array-length v0, p0

    const-string v1, ""

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_3d

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 159
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 160
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_26

    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    :cond_26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3d
    return-object v1
.end method

.method public static bytesToLong([BIZ)J
    .registers 4

    const/16 v0, 0x8

    .line 115
    invoke-static {p0, p1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 119
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 121
    :cond_d
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p0

    return-wide p0
.end method

.method public static int2Ip(I)Ljava/lang/String;
    .registers 4

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 310
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    .line 311
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    .line 312
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static int2byte(I[BI)V
    .registers 5

    add-int/lit8 v0, p2, 0x1

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    .line 27
    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 28
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 29
    aput-byte v1, p1, p2

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 30
    aput-byte p0, p1, v0

    return-void
.end method

.method public static int2byte(I)[B
    .registers 4

    const/4 v0, 0x4

    .line 53
    new-array v0, v0, [B

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    ushr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static int2byte_Larger(I[BI)V
    .registers 5

    add-int/lit8 v0, p2, 0x1

    const/high16 v1, -0x1000000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    .line 34
    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    .line 35
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    .line 36
    aput-byte v1, p1, p2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 37
    aput-byte p0, p1, v0

    return-void
.end method

.method public static intToByte(I)B
    .registers 1

    int-to-byte p0, p0

    return p0
.end method

.method public static intToBytes(IZ)[B
    .registers 3

    const/4 v0, 0x4

    .line 140
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz p1, :cond_c

    .line 144
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :cond_c
    const/4 p1, 0x0

    .line 146
    invoke-virtual {v0, p1, p0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 147
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static longToBytes(JZ)[B
    .registers 4

    const/16 v0, 0x8

    .line 127
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz p2, :cond_d

    .line 131
    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :cond_d
    const/4 p2, 0x0

    .line 133
    invoke-virtual {v0, p2, p0, p1}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 134
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static short2byte(S[BI)V
    .registers 5

    add-int/lit8 v0, p2, 0x1

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    .line 22
    aput-byte v1, p1, p2

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 23
    aput-byte p0, p1, v0

    return-void
.end method

.method public static stringSpilt(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 9

    .line 273
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/2addr v0, p1

    .line 275
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/2addr v1, p1

    if-lez v1, :cond_11

    add-int/lit8 v1, v0, 0x1

    .line 276
    new-array v1, v1, [Ljava/lang/String;

    goto :goto_13

    .line 278
    :cond_11
    new-array v1, v0, [Ljava/lang/String;

    .line 284
    :goto_13
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(I)V

    const/4 v0, 0x0

    move v4, p1

    move v2, v0

    move v3, v2

    .line 286
    :goto_1c
    array-length v5, v1

    if-ge v2, v5, :cond_4d

    const/4 v5, 0x1

    if-nez v2, :cond_2d

    .line 287
    array-length v6, v1

    if-le v6, v5, :cond_2d

    .line 288
    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    move v3, p1

    goto :goto_4a

    :cond_2d
    if-lez v2, :cond_3c

    .line 290
    array-length v6, v1

    sub-int/2addr v6, v5

    if-ge v2, v6, :cond_3c

    add-int/2addr v4, p1

    .line 292
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    move v3, v4

    goto :goto_4a

    .line 294
    :cond_3c
    array-length v6, v1

    sub-int/2addr v6, v5

    if-ne v2, v6, :cond_4a

    .line 295
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    :cond_4a
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_4d
    return-object v1
.end method

.method public static ubyteToInt(B)I
    .registers 2

    and-int/lit8 v0, p0, 0x7f

    if-gez p0, :cond_6

    add-int/lit16 v0, v0, 0x80

    :cond_6
    return v0
.end method

.method public static uint2ulong(I)J
    .registers 5

    const v0, 0x7fffffff

    and-int/2addr v0, p0

    int-to-long v0, v0

    if-gez p0, :cond_d

    const-wide v2, 0x80000000L

    add-long/2addr v0, v2

    :cond_d
    return-wide v0
.end method
