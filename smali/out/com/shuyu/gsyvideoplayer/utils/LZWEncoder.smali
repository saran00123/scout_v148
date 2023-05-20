.class Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;
.super Ljava/lang/Object;
.source "AnimatedGifEncoder.java"


# static fields
.field static final BITS:I = 0xc

.field private static final EOF:I = -0x1

.field static final HSIZE:I = 0x138b


# instance fields
.field ClearCode:I

.field EOFCode:I

.field a_count:I

.field accum:[B

.field clear_flg:Z

.field codetab:[I

.field private curPixel:I

.field cur_accum:I

.field cur_bits:I

.field free_ent:I

.field g_init_bits:I

.field hsize:I

.field htab:[I

.field private imgH:I

.field private imgW:I

.field private initCodeSize:I

.field masks:[I

.field maxbits:I

.field maxcode:I

.field maxmaxcode:I

.field n_bits:I

.field private pixAry:[B

.field private remaining:I


# direct methods
.method constructor <init>(II[BI)V
    .registers 7

    .line 1089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    .line 1024
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->maxbits:I

    const/16 v0, 0x1000

    .line 1028
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->maxmaxcode:I

    const/16 v0, 0x138b

    .line 1030
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->htab:[I

    .line 1032
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->codetab:[I

    .line 1034
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->hsize:I

    const/4 v0, 0x0

    .line 1036
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->free_ent:I

    .line 1040
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->clear_flg:Z

    .line 1075
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->cur_accum:I

    .line 1077
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->cur_bits:I

    const/16 v0, 0x11

    .line 1079
    new-array v0, v0, [I

    fill-array-data v0, :array_3e

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->masks:[I

    const/16 v0, 0x100

    .line 1086
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->accum:[B

    .line 1090
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->imgW:I

    .line 1091
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->imgH:I

    .line 1092
    iput-object p3, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->pixAry:[B

    const/4 p1, 0x2

    .line 1093
    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->initCodeSize:I

    return-void

    nop

    :array_3e
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
    .end array-data
.end method

.method private nextPixel()I
    .registers 4

    .line 1221
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->remaining:I

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 1224
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->remaining:I

    .line 1226
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->pixAry:[B

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->curPixel:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->curPixel:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method final MAXCODE(I)I
    .registers 3

    const/4 v0, 0x1

    shl-int p1, v0, p1

    sub-int/2addr p1, v0

    return p1
.end method

.method char_out(BLjava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1099
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->accum:[B

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->a_count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->a_count:I

    aput-byte p1, v0, v1

    .line 1100
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->a_count:I

    const/16 v0, 0xfe

    if-lt p1, v0, :cond_13

    .line 1101
    invoke-virtual {p0, p2}, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->flush_char(Ljava/io/OutputStream;)V

    :cond_13
    return-void
.end method

.method cl_block(Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1108
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->hsize:I

    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->cl_hash(I)V

    .line 1109
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->ClearCode:I

    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->free_ent:I

    const/4 v1, 0x1

    .line 1110
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->clear_flg:Z

    .line 1112
    invoke-virtual {p0, v0, p1}, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->output(ILjava/io/OutputStream;)V

    return-void
.end method

.method cl_hash(I)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_b

    .line 1118
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->htab:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return-void
.end method

.method compress(ILjava/io/OutputStream;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1131
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->g_init_bits:I

    const/4 v0, 0x0

    .line 1134
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->clear_flg:Z

    .line 1135
    iget v1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->g_init_bits:I

    iput v1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->n_bits:I

    .line 1136
    iget v1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->n_bits:I

    invoke-virtual {p0, v1}, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->MAXCODE(I)I

    move-result v1

    iput v1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->maxcode:I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    shl-int p1, v1, p1

    .line 1138
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->ClearCode:I

    .line 1139
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->ClearCode:I

    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->EOFCode:I

    add-int/lit8 p1, p1, 0x2

    .line 1140
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->free_ent:I

    .line 1142
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->a_count:I

    .line 1144
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->nextPixel()I

    move-result p1

    .line 1147
    iget v2, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->hsize:I

    :goto_29
    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_32

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v2, v2, 0x2

    goto :goto_29

    :cond_32
    rsub-int/lit8 v0, v0, 0x8

    .line 1151
    iget v2, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->hsize:I

    .line 1152
    invoke-virtual {p0, v2}, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->cl_hash(I)V

    .line 1154
    iget v3, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->ClearCode:I

    invoke-virtual {p0, v3, p2}, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->output(ILjava/io/OutputStream;)V

    .line 1157
    :goto_3e
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->nextPixel()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8f

    .line 1158
    iget v4, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->maxbits:I

    shl-int v4, v3, v4

    add-int/2addr v4, p1

    shl-int v5, v3, v0

    xor-int/2addr v5, p1

    .line 1161
    iget-object v6, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->htab:[I

    aget v7, v6, v5

    if-ne v7, v4, :cond_58

    .line 1162
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->codetab:[I

    aget p1, p1, v5

    goto :goto_3e

    .line 1164
    :cond_58
    aget v6, v6, v5

    if-ltz v6, :cond_74

    sub-int v6, v2, v5

    if-nez v5, :cond_61

    move v6, v1

    :cond_61
    sub-int/2addr v5, v6

    if-gez v5, :cond_65

    add-int/2addr v5, v2

    .line 1173
    :cond_65
    iget-object v7, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->htab:[I

    aget v8, v7, v5

    if-ne v8, v4, :cond_70

    .line 1174
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->codetab:[I

    aget p1, p1, v5

    goto :goto_3e

    .line 1177
    :cond_70
    aget v7, v7, v5

    if-gez v7, :cond_61

    .line 1179
    :cond_74
    invoke-virtual {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->output(ILjava/io/OutputStream;)V

    .line 1181
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->free_ent:I

    iget v6, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->maxmaxcode:I

    if-ge p1, v6, :cond_8a

    .line 1182
    iget-object v6, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->codetab:[I

    add-int/lit8 v7, p1, 0x1

    iput v7, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->free_ent:I

    aput p1, v6, v5

    .line 1183
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->htab:[I

    aput v4, p1, v5

    goto :goto_8d

    .line 1185
    :cond_8a
    invoke-virtual {p0, p2}, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->cl_block(Ljava/io/OutputStream;)V

    :goto_8d
    move p1, v3

    goto :goto_3e

    .line 1188
    :cond_8f
    invoke-virtual {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->output(ILjava/io/OutputStream;)V

    .line 1189
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->EOFCode:I

    invoke-virtual {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->output(ILjava/io/OutputStream;)V

    return-void
.end method

.method encode(Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1194
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->initCodeSize:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 1196
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->imgW:I

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->imgH:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->remaining:I

    const/4 v0, 0x0

    .line 1197
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->curPixel:I

    .line 1199
    iget v1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->initCodeSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->compress(ILjava/io/OutputStream;)V

    .line 1201
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method flush_char(Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1206
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->a_count:I

    if-lez v0, :cond_11

    .line 1207
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 1208
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->accum:[B

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->a_count:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 1209
    iput v2, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->a_count:I

    :cond_11
    return-void
.end method

.method output(ILjava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1232
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->cur_accum:I

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->masks:[I

    iget v2, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->cur_bits:I

    aget v1, v1, v2

    and-int/2addr v0, v1

    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->cur_accum:I

    if-lez v2, :cond_15

    .line 1235
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->cur_accum:I

    shl-int v1, p1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->cur_accum:I

    goto :goto_17

    .line 1237
    :cond_15
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->cur_accum:I

    .line 1239
    :goto_17
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->cur_bits:I

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->n_bits:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->cur_bits:I

    .line 1241
    :goto_1e
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->cur_bits:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_37

    .line 1242
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->cur_accum:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0, p2}, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->char_out(BLjava/io/OutputStream;)V

    .line 1243
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->cur_accum:I

    shr-int/2addr v0, v1

    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->cur_accum:I

    .line 1244
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->cur_bits:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->cur_bits:I

    goto :goto_1e

    .line 1249
    :cond_37
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->free_ent:I

    iget v2, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->maxcode:I

    if-gt v0, v2, :cond_41

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->clear_flg:Z

    if-eqz v0, :cond_6a

    .line 1250
    :cond_41
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->clear_flg:Z

    if-eqz v0, :cond_53

    .line 1251
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->g_init_bits:I

    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->n_bits:I

    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->MAXCODE(I)I

    move-result v0

    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->maxcode:I

    const/4 v0, 0x0

    .line 1252
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->clear_flg:Z

    goto :goto_6a

    .line 1254
    :cond_53
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->n_bits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->n_bits:I

    .line 1255
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->n_bits:I

    iget v2, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->maxbits:I

    if-ne v0, v2, :cond_64

    .line 1256
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->maxmaxcode:I

    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->maxcode:I

    goto :goto_6a

    .line 1258
    :cond_64
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->MAXCODE(I)I

    move-result v0

    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->maxcode:I

    .line 1262
    :cond_6a
    :goto_6a
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->EOFCode:I

    if-ne p1, v0, :cond_88

    .line 1264
    :goto_6e
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->cur_bits:I

    if-lez p1, :cond_85

    .line 1265
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->cur_accum:I

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->char_out(BLjava/io/OutputStream;)V

    .line 1266
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->cur_accum:I

    shr-int/2addr p1, v1

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->cur_accum:I

    .line 1267
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->cur_bits:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->cur_bits:I

    goto :goto_6e

    .line 1270
    :cond_85
    invoke-virtual {p0, p2}, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->flush_char(Ljava/io/OutputStream;)V

    :cond_88
    return-void
.end method
