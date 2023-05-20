.class public Lcom/taobao/accs/flowcontrol/FlowControl;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;,
        Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;
    }
.end annotation


# static fields
.field public static final DELAY_MAX:I = -0x1

.field public static final DELAY_MAX_BRUSH:I = -0x3e8

.field public static final HIGH_FLOW_CTRL:I = 0x2

.field public static final HIGH_FLOW_CTRL_BRUSH:I = 0x3

.field public static final LOW_FLOW_CTRL:I = 0x1

.field public static final NO_FLOW_CTRL:I = 0x0

.field public static final SERVICE_ALL:Ljava/lang/String; = "ALL"

.field public static final SERVICE_ALL_BRUSH:Ljava/lang/String; = "ALL_BRUSH"

.field public static final STATUS_FLOW_CTRL_ALL:I = 0x1a4

.field public static final STATUS_FLOW_CTRL_BRUSH:I = 0x1a6

.field public static final STATUS_FLOW_CTRL_CUR:I = 0x1a5


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/taobao/accs/flowcontrol/FlowControl;->a:Landroid/content/Context;

    return-void
.end method

.method private a()V
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    if-eqz v0, :cond_36

    iget-object v0, v0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->flowCtrlMap:Ljava/util/Map;

    if-eqz v0, :cond_36

    .line 186
    monitor-enter p0

    .line 187
    :try_start_9
    iget-object v0, p0, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    iget-object v0, v0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->flowCtrlMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 188
    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 189
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    .line 190
    invoke-virtual {v1}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 191
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_15

    .line 194
    :cond_31
    monitor-exit p0

    goto :goto_36

    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_9 .. :try_end_35} :catchall_33

    throw v0

    :cond_36
    :goto_36
    return-void
.end method

.method private a(JJ)Z
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_d

    cmp-long p1, p3, v0

    if-gtz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x1

    return p1

    :cond_d
    :goto_d
    const/4 p1, 0x0

    .line 123
    new-array p2, p1, [Ljava/lang/Object;

    const-string p3, "FlowControl"

    const-string p4, "error flow ctrl info"

    invoke-static {p3, p4, p2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method


# virtual methods
.method public a(Ljava/util/Map;Ljava/lang/String;)I
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/16 v2, 0x1a6

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_13b

    .line 64
    :try_start_b
    sget-object v6, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_STATUS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v6}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 66
    sget-object v7, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_DELAY:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v7}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 68
    sget-object v8, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_EXPIRE:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v8}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 70
    sget-object v9, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_BUSINESS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v9}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_53

    move v6, v5

    goto :goto_5b

    :cond_53
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_5b} :catch_12d

    .line 72
    :goto_5b
    :try_start_5b
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_63

    move-wide v13, v3

    goto :goto_6c

    :cond_63
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_6b} :catch_129

    move-wide v13, v9

    .line 73
    :goto_6c
    :try_start_6c
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_74

    move-wide v7, v3

    goto :goto_7c

    :cond_74
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :goto_7c
    const/16 v9, 0x1a5

    const/16 v10, 0x1a4

    if-eq v6, v10, :cond_86

    if-eq v6, v9, :cond_86

    if-ne v6, v2, :cond_8c

    .line 78
    :cond_86
    invoke-direct {v1, v13, v14, v7, v8}, Lcom/taobao/accs/flowcontrol/FlowControl;->a(JJ)Z

    move-result v11

    if-nez v11, :cond_8d

    :cond_8c
    return v5

    .line 81
    :cond_8d
    monitor-enter p0
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_8e} :catch_125

    .line 82
    :try_start_8e
    iget-object v11, v1, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    if-nez v11, :cond_99

    .line 83
    new-instance v11, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    invoke-direct {v11}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;-><init>()V

    iput-object v11, v1, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    :cond_99
    const/4 v11, 0x0

    if-ne v6, v10, :cond_b8

    .line 87
    new-instance v0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    const-string v10, "ALL"

    const-string v11, ""

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17
    :try_end_a6
    .catchall {:try_start_8e .. :try_end_a6} :catchall_11c

    move-object v9, v0

    move v12, v6

    move-wide/from16 v19, v13

    move-wide v15, v7

    :try_start_ab
    invoke-direct/range {v9 .. v18}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IJJJ)V

    .line 89
    iget-object v7, v1, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    const-string v8, "ALL"

    const-string v9, ""

    invoke-virtual {v7, v8, v9, v0}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->put(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;)V

    goto :goto_fc

    :cond_b8
    move-wide/from16 v19, v13

    if-ne v6, v2, :cond_d8

    .line 91
    new-instance v0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    const-string v10, "ALL_BRUSH"

    const-string v11, ""

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object v9, v0

    move v12, v6

    move-wide/from16 v13, v19

    move-wide v15, v7

    invoke-direct/range {v9 .. v18}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IJJJ)V

    .line 93
    iget-object v7, v1, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    const-string v8, "ALL_BRUSH"

    const-string v9, ""

    invoke-virtual {v7, v8, v9, v0}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->put(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;)V

    goto :goto_fc

    :cond_d8
    if-ne v6, v9, :cond_fb

    .line 94
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_fb

    .line 95
    new-instance v15, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object v9, v15

    move-object/from16 v10, p2

    move-object v11, v0

    move v12, v6

    move-wide/from16 v13, v19

    move-object v2, v15

    move-wide v15, v7

    invoke-direct/range {v9 .. v18}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IJJJ)V

    .line 97
    iget-object v7, v1, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    move-object/from16 v8, p2

    invoke-virtual {v7, v8, v0, v2}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->put(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;)V

    move-object v0, v2

    goto :goto_fc

    :cond_fb
    move-object v0, v11

    :goto_fc
    if-eqz v0, :cond_11a

    const-string v2, "FlowControl"

    .line 100
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateFlowCtrlInfo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    :cond_11a
    monitor-exit p0

    goto :goto_13e

    :catchall_11c
    move-exception v0

    move-wide/from16 v19, v13

    :goto_11f
    monitor-exit p0
    :try_end_120
    .catchall {:try_start_ab .. :try_end_120} :catchall_123

    :try_start_120
    throw v0
    :try_end_121
    .catch Ljava/lang/Throwable; {:try_start_120 .. :try_end_121} :catch_121

    :catch_121
    move-exception v0

    goto :goto_131

    :catchall_123
    move-exception v0

    goto :goto_11f

    :catch_125
    move-exception v0

    move-wide/from16 v19, v13

    goto :goto_131

    :catch_129
    move-exception v0

    move-wide/from16 v19, v3

    goto :goto_131

    :catch_12d
    move-exception v0

    move-wide/from16 v19, v3

    move v6, v5

    .line 106
    :goto_131
    new-array v2, v5, [Ljava/lang/Object;

    const-string v7, "FlowControl"

    const-string v8, "updateFlowCtrlInfo"

    invoke-static {v7, v8, v0, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_13e

    :cond_13b
    move-wide/from16 v19, v3

    move v6, v5

    :goto_13e
    cmp-long v0, v19, v3

    if-lez v0, :cond_144

    const/4 v0, 0x1

    return v0

    :cond_144
    if-nez v0, :cond_147

    return v5

    :cond_147
    const/16 v2, 0x1a6

    if-ne v2, v6, :cond_14d

    const/4 v0, 0x3

    return v0

    :cond_14d
    const/4 v0, 0x2

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)J
    .registers 16

    .line 135
    iget-object v0, p0, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_df

    iget-object v0, v0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->flowCtrlMap:Ljava/util/Map;

    if-eqz v0, :cond_df

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_df

    .line 141
    :cond_12
    monitor-enter p0

    .line 142
    :try_start_13
    iget-object v0, p0, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    const-string v3, "ALL"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    move-result-object v0

    .line 143
    iget-object v3, p0, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    const-string v5, "ALL_BRUSH"

    invoke-virtual {v3, v5, v4}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    move-result-object v3

    .line 144
    iget-object v5, p0, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    invoke-virtual {v5, p1, v4}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    move-result-object v4

    .line 145
    iget-object v5, p0, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    invoke-virtual {v5, p1, p2}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    move-result-object v5

    if-eqz v0, :cond_3c

    .line 148
    invoke-virtual {v0}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->isExpired()Z

    move-result v6

    if-eqz v6, :cond_39

    goto :goto_3c

    :cond_39
    iget-wide v6, v0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->delayTime:J

    goto :goto_3d

    :cond_3c
    :goto_3c
    move-wide v6, v1

    :goto_3d
    if-eqz v3, :cond_49

    .line 152
    invoke-virtual {v3}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->isExpired()Z

    move-result v8

    if-eqz v8, :cond_46

    goto :goto_49

    :cond_46
    iget-wide v8, v3, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->delayTime:J

    goto :goto_4a

    :cond_49
    :goto_49
    move-wide v8, v1

    :goto_4a
    if-eqz v4, :cond_56

    .line 156
    invoke-virtual {v4}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_53

    goto :goto_56

    :cond_53
    iget-wide v3, v4, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->delayTime:J

    goto :goto_57

    :cond_56
    :goto_56
    move-wide v3, v1

    :goto_57
    if-eqz v5, :cond_62

    .line 160
    invoke-virtual {v5}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->isExpired()Z

    move-result v10

    if-eqz v10, :cond_60

    goto :goto_62

    :cond_60
    iget-wide v1, v5, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->delayTime:J

    :cond_62
    :goto_62
    const-wide/16 v10, -0x1

    cmp-long v12, v6, v10

    if-eqz v12, :cond_86

    cmp-long v12, v1, v10

    if-eqz v12, :cond_86

    cmp-long v12, v3, v10

    if-nez v12, :cond_71

    goto :goto_86

    :cond_71
    cmp-long v8, v8, v10

    if-nez v8, :cond_78

    const-wide/16 v10, -0x3e8

    goto :goto_86

    :cond_78
    cmp-long v8, v6, v1

    if-lez v8, :cond_7e

    move-wide v8, v6

    goto :goto_7f

    :cond_7e
    move-wide v8, v1

    :goto_7f
    cmp-long v10, v8, v3

    if-lez v10, :cond_85

    move-wide v10, v8

    goto :goto_86

    :cond_85
    move-wide v10, v3

    :cond_86
    :goto_86
    if-eqz v5, :cond_8e

    .line 174
    invoke-virtual {v5}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->isExpired()Z

    move-result v5

    if-nez v5, :cond_96

    :cond_8e
    if-eqz v0, :cond_99

    .line 175
    invoke-virtual {v0}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 176
    :cond_96
    invoke-direct {p0}, Lcom/taobao/accs/flowcontrol/FlowControl;->a()V

    .line 178
    :cond_99
    monitor-exit p0
    :try_end_9a
    .catchall {:try_start_13 .. :try_end_9a} :catchall_dc

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFlowCtrlDelay service "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " biz "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " result:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " global:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " serviceDelay:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " bidDelay:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "FlowControl"

    invoke-static {v0, p1, p2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v10

    :catchall_dc
    move-exception p1

    .line 178
    :try_start_dd
    monitor-exit p0
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_dc

    throw p1

    :cond_df
    :goto_df
    return-wide v1
.end method
