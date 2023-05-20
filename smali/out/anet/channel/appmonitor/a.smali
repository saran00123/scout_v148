.class public Lanet/channel/appmonitor/a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/appmonitor/IAppMonitor;


# static fields
.field private static a:Z = false

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/Random;

.field private static f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lanet/channel/appmonitor/a;->b:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lanet/channel/appmonitor/a;->c:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lanet/channel/appmonitor/a;->d:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lanet/channel/appmonitor/a;->e:Ljava/util/Random;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lanet/channel/appmonitor/a;->f:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    const-string v0, "com.alibaba.mtl.appmonitor.AppMonitor"

    .line 47
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    .line 48
    sput-boolean v0, Lanet/channel/appmonitor/a;->a:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_c

    goto :goto_f

    :catch_c
    const/4 v0, 0x0

    .line 50
    sput-boolean v0, Lanet/channel/appmonitor/a;->a:Z

    :goto_f
    return-void
.end method


# virtual methods
.method declared-synchronized a(Ljava/lang/Class;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    monitor-enter p0

    if-eqz v0, :cond_f7

    .line 170
    :try_start_5
    sget-boolean v1, Lanet/channel/appmonitor/a;->a:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_f4

    if-nez v1, :cond_b

    goto/16 :goto_f7

    :cond_b
    const/4 v1, 0x0

    .line 175
    :try_start_c
    sget-object v2, Lanet/channel/appmonitor/a;->f:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_12} :catch_e7
    .catchall {:try_start_c .. :try_end_12} :catchall_f4

    if-eqz v2, :cond_16

    .line 176
    monitor-exit p0

    return-void

    .line 179
    :cond_16
    :try_start_16
    const-class v2, Lanet/channel/statist/Monitor;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lanet/channel/statist/Monitor;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1e} :catch_e7
    .catchall {:try_start_16 .. :try_end_1e} :catchall_f4

    if-nez v2, :cond_22

    .line 181
    monitor-exit p0

    return-void

    .line 184
    :cond_22
    :try_start_22
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 185
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 186
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 188
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v6

    .line 189
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v7

    move v8, v1

    .line 191
    :goto_39
    array-length v9, v3

    if-ge v8, v9, :cond_cc

    .line 192
    aget-object v9, v3, v8

    .line 193
    const-class v10, Lanet/channel/statist/Dimension;

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lanet/channel/statist/Dimension;

    const/4 v11, 0x1

    if-eqz v10, :cond_6d

    .line 195
    invoke-virtual {v9, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 196
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-interface {v10}, Lanet/channel/statist/Dimension;->name()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_60

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    goto :goto_64

    :cond_60
    invoke-interface {v10}, Lanet/channel/statist/Dimension;->name()Ljava/lang/String;

    move-result-object v10

    .line 198
    :goto_64
    sget-object v11, Lanet/channel/appmonitor/a;->d:Ljava/util/Map;

    invoke-interface {v11, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-virtual {v6, v10}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    goto :goto_c8

    .line 202
    :cond_6d
    const-class v10, Lanet/channel/statist/Measure;

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lanet/channel/statist/Measure;

    if-eqz v10, :cond_c8

    .line 204
    invoke-virtual {v9, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 205
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-interface {v10}, Lanet/channel/statist/Measure;->name()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8e

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    goto :goto_92

    :cond_8e
    invoke-interface {v10}, Lanet/channel/statist/Measure;->name()Ljava/lang/String;

    move-result-object v11

    .line 207
    :goto_92
    sget-object v12, Lanet/channel/appmonitor/a;->d:Ljava/util/Map;

    invoke-interface {v12, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-interface {v10}, Lanet/channel/statist/Measure;->max()D

    move-result-wide v12

    const-wide v14, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v9, v12, v14

    if-eqz v9, :cond_c5

    .line 209
    new-instance v9, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .line 210
    invoke-interface {v10}, Lanet/channel/statist/Measure;->constantValue()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-interface {v10}, Lanet/channel/statist/Measure;->min()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-interface {v10}, Lanet/channel/statist/Measure;->max()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-direct {v9, v11, v12, v13, v10}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 209
    invoke-virtual {v7, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    goto :goto_c8

    .line 212
    :cond_c5
    invoke-virtual {v7, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    :cond_c8
    :goto_c8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_39

    .line 216
    :cond_cc
    sget-object v3, Lanet/channel/appmonitor/a;->b:Ljava/util/Map;

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v3, Lanet/channel/appmonitor/a;->c:Ljava/util/Map;

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-interface {v2}, Lanet/channel/statist/Monitor;->module()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lanet/channel/statist/Monitor;->monitorPoint()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v7, v6}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 220
    sget-object v2, Lanet/channel/appmonitor/a;->f:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_e6} :catch_e7
    .catchall {:try_start_22 .. :try_end_e6} :catchall_f4

    goto :goto_f2

    :catch_e7
    move-exception v0

    :try_start_e8
    const-string v2, "awcn.DefaultAppMonitor"

    const-string v3, "register fail"

    const/4 v4, 0x0

    .line 222
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v0, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_f2
    .catchall {:try_start_e8 .. :try_end_f2} :catchall_f4

    .line 224
    :goto_f2
    monitor-exit p0

    return-void

    :catchall_f4
    move-exception v0

    monitor-exit p0

    throw v0

    .line 171
    :cond_f7
    :goto_f7
    monitor-exit p0

    return-void
.end method

.method public commitAlarm(Lanet/channel/statist/AlarmObject;)V
    .registers 6

    .line 131
    sget-boolean v0, Lanet/channel/appmonitor/a;->a:Z

    if-eqz v0, :cond_64

    if-nez p1, :cond_7

    goto :goto_64

    .line 134
    :cond_7
    iget-object v0, p1, Lanet/channel/statist/AlarmObject;->module:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_64

    iget-object v0, p1, Lanet/channel/statist/AlarmObject;->modulePoint:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_64

    :cond_18
    const/4 v0, 0x1

    .line 138
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "commit alarm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "awcn.DefaultAppMonitor"

    invoke-static {v3, v0, v1, v2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :cond_39
    iget-boolean v0, p1, Lanet/channel/statist/AlarmObject;->isSuccess:Z

    if-nez v0, :cond_57

    .line 142
    iget-object v0, p1, Lanet/channel/statist/AlarmObject;->module:Ljava/lang/String;

    iget-object v1, p1, Lanet/channel/statist/AlarmObject;->modulePoint:Ljava/lang/String;

    iget-object v2, p1, Lanet/channel/statist/AlarmObject;->arg:Ljava/lang/String;

    .line 143
    invoke-static {v2}, Lanet/channel/util/StringUtils;->stringNull2Empty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lanet/channel/statist/AlarmObject;->errorCode:Ljava/lang/String;

    .line 144
    invoke-static {v3}, Lanet/channel/util/StringUtils;->stringNull2Empty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lanet/channel/statist/AlarmObject;->errorMsg:Ljava/lang/String;

    .line 145
    invoke-static {p1}, Lanet/channel/util/StringUtils;->stringNull2Empty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-static {v0, v1, v2, v3, p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64

    .line 147
    :cond_57
    iget-object v0, p1, Lanet/channel/statist/AlarmObject;->module:Ljava/lang/String;

    iget-object v1, p1, Lanet/channel/statist/AlarmObject;->modulePoint:Ljava/lang/String;

    iget-object p1, p1, Lanet/channel/statist/AlarmObject;->arg:Ljava/lang/String;

    .line 148
    invoke-static {p1}, Lanet/channel/util/StringUtils;->stringNull2Empty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-static {v0, v1, p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    :goto_64
    return-void
.end method

.method public commitCount(Lanet/channel/statist/CountObject;)V
    .registers 7

    .line 154
    sget-boolean v0, Lanet/channel/appmonitor/a;->a:Z

    if-eqz v0, :cond_48

    if-nez p1, :cond_7

    goto :goto_48

    .line 157
    :cond_7
    iget-object v0, p1, Lanet/channel/statist/CountObject;->module:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p1, Lanet/channel/statist/CountObject;->modulePoint:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_48

    :cond_18
    const/4 v0, 0x2

    .line 161
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "commit count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "awcn.DefaultAppMonitor"

    invoke-static {v3, v0, v1, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    :cond_39
    iget-object v0, p1, Lanet/channel/statist/CountObject;->module:Ljava/lang/String;

    iget-object v1, p1, Lanet/channel/statist/CountObject;->modulePoint:Ljava/lang/String;

    iget-object v2, p1, Lanet/channel/statist/CountObject;->arg:Ljava/lang/String;

    .line 165
    invoke-static {v2}, Lanet/channel/util/StringUtils;->stringNull2Empty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p1, Lanet/channel/statist/CountObject;->value:D

    .line 164
    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter;->commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    :cond_48
    :goto_48
    return-void
.end method

.method public commitStat(Lanet/channel/statist/StatObject;)V
    .registers 16

    const-string v0, "awcn.DefaultAppMonitor"

    .line 65
    sget-boolean v1, Lanet/channel/appmonitor/a;->a:Z

    if-eqz v1, :cond_122

    if-nez p1, :cond_a

    goto/16 :goto_122

    .line 69
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 70
    const-class v2, Lanet/channel/statist/Monitor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lanet/channel/statist/Monitor;

    if-nez v2, :cond_19

    return-void

    .line 76
    :cond_19
    sget-object v3, Lanet/channel/appmonitor/a;->f:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 77
    invoke-virtual {p0, v1}, Lanet/channel/appmonitor/a;->a(Ljava/lang/Class;)V

    .line 80
    :cond_24
    invoke-virtual {p1}, Lanet/channel/statist/StatObject;->beforeCommit()Z

    move-result v3

    if-nez v3, :cond_2b

    return-void

    .line 84
    :cond_2b
    invoke-interface {v2}, Lanet/channel/statist/Monitor;->monitorPoint()Ljava/lang/String;

    move-result-object v3

    const-string v4, "network"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 85
    invoke-static {}, Lanetwork/channel/config/NetworkConfigCenter;->getRequestStatisticSampleRate()I

    move-result v3

    const/16 v4, 0x2710

    if-gt v3, v4, :cond_41

    if-gez v3, :cond_42

    :cond_41
    move v3, v4

    :cond_42
    if-eq v3, v4, :cond_4d

    .line 89
    sget-object v5, Lanet/channel/appmonitor/a;->e:Ljava/util/Random;

    invoke-virtual {v5, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    if-lt v4, v3, :cond_4d

    return-void

    :cond_4d
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 95
    :try_start_4f
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v5

    .line 96
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v6

    .line 97
    sget-object v7, Lanet/channel/appmonitor/a;->b:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v8, 0x1

    .line 101
    invoke-static {v8}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v9

    if-eqz v9, :cond_6c

    .line 102
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    goto :goto_6d

    :cond_6c
    move-object v9, v4

    :goto_6d
    if-eqz v7, :cond_d3

    .line 106
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_73
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_98

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/reflect/Field;

    .line 107
    invoke-virtual {v10, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 108
    sget-object v12, Lanet/channel/appmonitor/a;->d:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-nez v11, :cond_90

    const-string v11, ""

    goto :goto_94

    :cond_90
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_94
    invoke-virtual {v5, v10, v11}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    goto :goto_73

    .line 110
    :cond_98
    sget-object v7, Lanet/channel/appmonitor/a;->c:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a4
    :goto_a4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Field;

    .line 111
    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 112
    sget-object v11, Lanet/channel/appmonitor/a;->d:Ljava/util/Map;

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-virtual {v6, v11, v12, v13}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    if-eqz v9, :cond_a4

    .line 114
    sget-object v11, Lanet/channel/appmonitor/a;->d:Ljava/util/Map;

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v9, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a4

    .line 118
    :cond_d3
    invoke-interface {v2}, Lanet/channel/statist/Monitor;->module()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2}, Lanet/channel/statist/Monitor;->monitorPoint()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v5, v6}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 120
    invoke-static {v8}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result p1

    if-eqz p1, :cond_122

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "commit stat: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lanet/channel/statist/Monitor;->monitorPoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "\nDimensions"

    aput-object v2, v1, v3

    invoke-virtual {v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->getMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x2

    const-string v5, "\nMeasures"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    .line 122
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 121
    invoke-static {v0, p1, v4, v1}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_119
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_119} :catch_11a

    goto :goto_122

    :catch_11a
    move-exception p1

    .line 125
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "commit monitor point failed"

    invoke-static {v0, v2, v4, p1, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_122
    :goto_122
    return-void
.end method

.method public register()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public register(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
