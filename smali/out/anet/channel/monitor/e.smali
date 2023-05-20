.class Lanet/channel/monitor/e;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field private a:J

.field private b:D

.field private c:D

.field private d:D

.field private e:D

.field private f:D

.field private g:D

.field private h:D

.field private i:D

.field private j:D

.field private k:D


# direct methods
.method constructor <init>()V
    .registers 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lanet/channel/monitor/e;->a:J

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lanet/channel/monitor/e;->i:D

    iput-wide v0, p0, Lanet/channel/monitor/e;->j:D

    .line 20
    iput-wide v0, p0, Lanet/channel/monitor/e;->k:D

    return-void
.end method


# virtual methods
.method public a(DD)D
    .registers 22

    move-object/from16 v0, p0

    div-double v1, p1, p3

    const-wide/high16 v3, 0x4020000000000000L    # 8.0

    cmpg-double v3, v1, v3

    const-wide/16 v4, 0x0

    if-gez v3, :cond_1a

    .line 38
    iget-wide v6, v0, Lanet/channel/monitor/e;->a:J

    cmp-long v3, v6, v4

    if-eqz v3, :cond_15

    .line 39
    iget-wide v1, v0, Lanet/channel/monitor/e;->k:D

    return-wide v1

    .line 41
    :cond_15
    iput-wide v1, v0, Lanet/channel/monitor/e;->k:D

    .line 42
    iget-wide v1, v0, Lanet/channel/monitor/e;->k:D

    return-wide v1

    .line 51
    :cond_1a
    iget-wide v6, v0, Lanet/channel/monitor/e;->a:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_3f

    .line 52
    iput-wide v1, v0, Lanet/channel/monitor/e;->i:D

    .line 53
    iget-wide v1, v0, Lanet/channel/monitor/e;->i:D

    iput-wide v1, v0, Lanet/channel/monitor/e;->h:D

    .line 55
    iget-wide v1, v0, Lanet/channel/monitor/e;->h:D

    const-wide v3, 0x3fb999999999999aL    # 0.1

    mul-double v5, v1, v3

    iput-wide v5, v0, Lanet/channel/monitor/e;->d:D

    const-wide v5, 0x3f947ae147ae147bL    # 0.02

    mul-double/2addr v5, v1

    .line 56
    iput-wide v5, v0, Lanet/channel/monitor/e;->c:D

    mul-double/2addr v3, v1

    mul-double/2addr v3, v1

    .line 57
    iput-wide v3, v0, Lanet/channel/monitor/e;->e:D

    goto/16 :goto_104

    :cond_3f
    const-wide/16 v3, 0x1

    cmp-long v3, v6, v3

    if-nez v3, :cond_4d

    .line 59
    iput-wide v1, v0, Lanet/channel/monitor/e;->j:D

    .line 60
    iget-wide v1, v0, Lanet/channel/monitor/e;->j:D

    iput-wide v1, v0, Lanet/channel/monitor/e;->h:D

    goto/16 :goto_104

    .line 63
    :cond_4d
    iget-wide v3, v0, Lanet/channel/monitor/e;->j:D

    sub-double v5, v1, v3

    .line 65
    iput-wide v3, v0, Lanet/channel/monitor/e;->i:D

    .line 66
    iput-wide v1, v0, Lanet/channel/monitor/e;->j:D

    const-wide v3, 0x3fee666666666666L    # 0.95

    div-double/2addr v1, v3

    .line 68
    iput-wide v1, v0, Lanet/channel/monitor/e;->b:D

    .line 69
    iget-wide v1, v0, Lanet/channel/monitor/e;->b:D

    iget-wide v7, v0, Lanet/channel/monitor/e;->h:D

    mul-double/2addr v7, v3

    sub-double/2addr v1, v7

    iput-wide v1, v0, Lanet/channel/monitor/e;->g:D

    const/4 v1, 0x0

    .line 73
    iget-wide v7, v0, Lanet/channel/monitor/e;->d:D

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 74
    iget-wide v9, v0, Lanet/channel/monitor/e;->g:D

    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    mul-double/2addr v11, v7

    cmpl-double v2, v9, v11

    const/4 v11, 0x2

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    const/4 v14, 0x1

    if-ltz v2, :cond_82

    mul-double/2addr v9, v12

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v1

    add-double/2addr v9, v7

    .line 76
    iput-wide v9, v0, Lanet/channel/monitor/e;->g:D

    move v1, v14

    goto :goto_91

    :cond_82
    const-wide/high16 v15, -0x3ff0000000000000L    # -4.0

    mul-double/2addr v15, v7

    cmpg-double v2, v9, v15

    if-gtz v2, :cond_91

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    mul-double/2addr v7, v1

    mul-double/2addr v9, v12

    add-double/2addr v7, v9

    .line 79
    iput-wide v7, v0, Lanet/channel/monitor/e;->g:D

    move v1, v11

    :cond_91
    :goto_91
    const-wide v7, 0x3ff0cccccccccccdL    # 1.05

    .line 82
    iget-wide v9, v0, Lanet/channel/monitor/e;->d:D

    mul-double/2addr v9, v7

    const-wide v7, 0x3f647ae147ae147bL    # 0.0025

    iget-wide v12, v0, Lanet/channel/monitor/e;->g:D

    mul-double/2addr v7, v12

    mul-double/2addr v7, v12

    sub-double/2addr v9, v7

    .line 84
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3fe999999999999aL    # 0.8

    iget-wide v12, v0, Lanet/channel/monitor/e;->d:D

    mul-double/2addr v12, v9

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff4000000000000L    # 1.25

    .line 85
    iget-wide v12, v0, Lanet/channel/monitor/e;->d:D

    mul-double/2addr v12, v9

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    iput-wide v7, v0, Lanet/channel/monitor/e;->d:D

    .line 87
    iget-wide v7, v0, Lanet/channel/monitor/e;->e:D

    const-wide v9, 0x3fece147ae147ae1L    # 0.9025

    mul-double/2addr v9, v7

    iget-wide v12, v0, Lanet/channel/monitor/e;->d:D

    add-double/2addr v9, v12

    div-double/2addr v7, v9

    iput-wide v7, v0, Lanet/channel/monitor/e;->f:D

    .line 88
    iget-wide v7, v0, Lanet/channel/monitor/e;->h:D

    const-wide v9, 0x3ff0d79435e50d79L    # 1.0526315789473684

    mul-double/2addr v9, v5

    add-double/2addr v7, v9

    iget-wide v5, v0, Lanet/channel/monitor/e;->f:D

    iget-wide v9, v0, Lanet/channel/monitor/e;->g:D

    mul-double/2addr v5, v9

    add-double/2addr v7, v5

    iput-wide v7, v0, Lanet/channel/monitor/e;->h:D

    if-ne v1, v14, :cond_ea

    .line 91
    iget-wide v1, v0, Lanet/channel/monitor/e;->h:D

    iget-wide v5, v0, Lanet/channel/monitor/e;->b:D

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lanet/channel/monitor/e;->h:D

    goto :goto_f6

    :cond_ea
    if-ne v1, v11, :cond_f6

    .line 93
    iget-wide v1, v0, Lanet/channel/monitor/e;->h:D

    iget-wide v5, v0, Lanet/channel/monitor/e;->b:D

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lanet/channel/monitor/e;->h:D

    :cond_f6
    :goto_f6
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 96
    iget-wide v5, v0, Lanet/channel/monitor/e;->f:D

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    iget-wide v3, v0, Lanet/channel/monitor/e;->e:D

    iget-wide v5, v0, Lanet/channel/monitor/e;->c:D

    add-double/2addr v3, v5

    mul-double/2addr v1, v3

    iput-wide v1, v0, Lanet/channel/monitor/e;->e:D

    .line 99
    :goto_104
    iget-wide v1, v0, Lanet/channel/monitor/e;->h:D

    const-wide/16 v3, 0x0

    cmpg-double v3, v1, v3

    if-gez v3, :cond_11b

    .line 100
    iget-wide v1, v0, Lanet/channel/monitor/e;->j:D

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v1, v3

    iput-wide v1, v0, Lanet/channel/monitor/e;->k:D

    .line 101
    iget-wide v1, v0, Lanet/channel/monitor/e;->k:D

    iput-wide v1, v0, Lanet/channel/monitor/e;->h:D

    goto :goto_11d

    .line 103
    :cond_11b
    iput-wide v1, v0, Lanet/channel/monitor/e;->k:D

    .line 106
    :goto_11d
    iget-wide v1, v0, Lanet/channel/monitor/e;->k:D

    return-wide v1
.end method

.method public a()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 111
    iput-wide v0, p0, Lanet/channel/monitor/e;->a:J

    const-wide/16 v0, 0x0

    .line 112
    iput-wide v0, p0, Lanet/channel/monitor/e;->k:D

    return-void
.end method
