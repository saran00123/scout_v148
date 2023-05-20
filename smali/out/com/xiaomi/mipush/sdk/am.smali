.class public Lcom/xiaomi/mipush/sdk/am;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xiaomi/mipush/sdk/am;

.field private static a:Ljava/lang/Object;

.field private static a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/am;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    if-nez v0, :cond_f

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    :cond_f
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/push/service/aj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/xiaomi/push/ir;Z[BLjava/lang/String;ILandroid/content/Intent;)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v0, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    const/4 v10, 0x0

    :try_start_d
    iget-object v4, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/xiaomi/mipush/sdk/ai;->a(Landroid/content/Context;Lcom/xiaomi/push/ir;)Lcom/xiaomi/push/jg;

    move-result-object v4

    if-nez v4, :cond_46

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receiving an un-recognized message. "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/xiaomi/push/ir;->a:Lcom/xiaomi/push/hv;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/en;->a(Landroid/content/Context;)Lcom/xiaomi/push/en;

    move-result-object v0

    iget-object v4, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/push/em;->a(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "18"

    invoke-virtual {v0, v4, v5, v8, v6}, Lcom/xiaomi/push/en;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mipush/sdk/s;->c(Landroid/content/Context;Lcom/xiaomi/push/ir;Z)V
    :try_end_45
    .catch Lcom/xiaomi/mipush/sdk/u; {:try_start_d .. :try_end_45} :catch_adf
    .catch Lcom/xiaomi/push/jl; {:try_start_d .. :try_end_45} :catch_aba

    return-object v10

    :cond_46
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/hv;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processing a message, action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    sget-object v6, Lcom/xiaomi/mipush/sdk/an;->a:[I

    invoke-virtual {v5}, Lcom/xiaomi/push/hv;->ordinal()I

    move-result v5

    aget v5, v6, v5

    const/4 v6, 0x1

    const-wide/16 v11, 0x0

    const/4 v7, 0x0

    packed-switch v5, :pswitch_data_afa

    :catch_6d
    :cond_6d
    :goto_6d
    move-object v2, v10

    goto/16 :goto_ab9

    :pswitch_70
    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    sget-object v8, Lcom/xiaomi/push/hv;->i:Lcom/xiaomi/push/hv;

    array-length v0, v0

    invoke-static {v3, v5, v4, v8, v0}, Lcom/xiaomi/push/da;->a(Ljava/lang/String;Landroid/content/Context;Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;I)V

    instance-of v0, v4, Lcom/xiaomi/push/im;

    if-eqz v0, :cond_23b

    check-cast v4, Lcom/xiaomi/push/im;

    invoke-virtual {v4}, Lcom/xiaomi/push/im;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resp-type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/xiaomi/push/im;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v4, Lcom/xiaomi/push/im;->a:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/b;->e(Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/push/if;->E:Lcom/xiaomi/push/if;

    iget-object v2, v2, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    iget-object v3, v4, Lcom/xiaomi/push/im;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0xa

    if-eqz v2, :cond_177

    iget-wide v4, v4, Lcom/xiaomi/push/im;->a:J

    cmp-long v2, v4, v11

    if-nez v2, :cond_11b

    const-class v2, Lcom/xiaomi/mipush/sdk/af;

    monitor-enter v2

    :try_start_c9
    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaomi/mipush/sdk/af;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_115

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaomi/mipush/sdk/af;->c(Ljava/lang/String;)V

    const-string v0, "syncing"

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/mipush/sdk/au;->a:Lcom/xiaomi/mipush/sdk/au;

    invoke-virtual {v3, v4}, Lcom/xiaomi/mipush/sdk/af;->a(Lcom/xiaomi/mipush/sdk/au;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_115

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object v0

    sget-object v3, Lcom/xiaomi/mipush/sdk/au;->a:Lcom/xiaomi/mipush/sdk/au;

    const-string v4, "synced"

    invoke-virtual {v0, v3, v4}, Lcom/xiaomi/mipush/sdk/af;->a(Lcom/xiaomi/mipush/sdk/au;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->clearNotification(Landroid/content/Context;)V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->clearLocalNotificationType(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a()V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/ao;->b()V

    :cond_115
    monitor-exit v2

    goto/16 :goto_6d

    :catchall_118
    move-exception v0

    monitor-exit v2
    :try_end_11a
    .catchall {:try_start_c9 .. :try_end_11a} :catchall_118

    throw v0

    :cond_11b
    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object v2

    sget-object v4, Lcom/xiaomi/mipush/sdk/au;->a:Lcom/xiaomi/mipush/sdk/au;

    invoke-virtual {v2, v4}, Lcom/xiaomi/mipush/sdk/af;->a(Lcom/xiaomi/mipush/sdk/au;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "syncing"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16c

    const-class v2, Lcom/xiaomi/mipush/sdk/af;

    monitor-enter v2

    :try_start_132
    iget-object v4, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/xiaomi/mipush/sdk/af;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_166

    iget-object v4, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/xiaomi/mipush/sdk/af;->a(Ljava/lang/String;)I

    move-result v4

    if-ge v4, v3, :cond_15d

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaomi/mipush/sdk/af;->b(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ao;

    move-result-object v3

    invoke-virtual {v3, v6, v0}, Lcom/xiaomi/mipush/sdk/ao;->a(ZLjava/lang/String;)V

    goto :goto_166

    :cond_15d
    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaomi/mipush/sdk/af;->c(Ljava/lang/String;)V

    :cond_166
    :goto_166
    monitor-exit v2

    goto/16 :goto_6d

    :catchall_169
    move-exception v0

    monitor-exit v2
    :try_end_16b
    .catchall {:try_start_132 .. :try_end_16b} :catchall_169

    throw v0

    :cond_16c
    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/mipush/sdk/af;->c(Ljava/lang/String;)V

    goto/16 :goto_6d

    :cond_177
    sget-object v2, Lcom/xiaomi/push/if;->F:Lcom/xiaomi/push/if;

    iget-object v2, v2, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    iget-object v5, v4, Lcom/xiaomi/push/im;->d:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_219

    iget-wide v4, v4, Lcom/xiaomi/push/im;->a:J

    cmp-long v2, v4, v11

    if-nez v2, :cond_1c8

    const-class v2, Lcom/xiaomi/mipush/sdk/af;

    monitor-enter v2

    :try_start_18c
    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaomi/mipush/sdk/af;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c2

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaomi/mipush/sdk/af;->c(Ljava/lang/String;)V

    const-string v0, "syncing"

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/mipush/sdk/au;->b:Lcom/xiaomi/mipush/sdk/au;

    invoke-virtual {v3, v4}, Lcom/xiaomi/mipush/sdk/af;->a(Lcom/xiaomi/mipush/sdk/au;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c2

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object v0

    sget-object v3, Lcom/xiaomi/mipush/sdk/au;->b:Lcom/xiaomi/mipush/sdk/au;

    const-string v4, "synced"

    invoke-virtual {v0, v3, v4}, Lcom/xiaomi/mipush/sdk/af;->a(Lcom/xiaomi/mipush/sdk/au;Ljava/lang/String;)V

    :cond_1c2
    monitor-exit v2

    goto/16 :goto_6d

    :catchall_1c5
    move-exception v0

    monitor-exit v2
    :try_end_1c7
    .catchall {:try_start_18c .. :try_end_1c7} :catchall_1c5

    throw v0

    :cond_1c8
    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object v2

    sget-object v4, Lcom/xiaomi/mipush/sdk/au;->b:Lcom/xiaomi/mipush/sdk/au;

    invoke-virtual {v2, v4}, Lcom/xiaomi/mipush/sdk/af;->a(Lcom/xiaomi/mipush/sdk/au;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "syncing"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16c

    const-class v2, Lcom/xiaomi/mipush/sdk/af;

    monitor-enter v2

    :try_start_1df
    iget-object v4, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/xiaomi/mipush/sdk/af;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_213

    iget-object v4, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/xiaomi/mipush/sdk/af;->a(Ljava/lang/String;)I

    move-result v4

    if-ge v4, v3, :cond_20a

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaomi/mipush/sdk/af;->b(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ao;

    move-result-object v3

    invoke-virtual {v3, v7, v0}, Lcom/xiaomi/mipush/sdk/ao;->a(ZLjava/lang/String;)V

    goto :goto_213

    :cond_20a
    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaomi/mipush/sdk/af;->c(Ljava/lang/String;)V

    :cond_213
    :goto_213
    monitor-exit v2

    goto/16 :goto_6d

    :catchall_216
    move-exception v0

    monitor-exit v2
    :try_end_218
    .catchall {:try_start_1df .. :try_end_218} :catchall_216

    throw v0

    :cond_219
    sget-object v0, Lcom/xiaomi/push/if;->N:Lcom/xiaomi/push/if;

    iget-object v0, v0, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    iget-object v2, v4, Lcom/xiaomi/push/im;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22a

    invoke-direct {v1, v4}, Lcom/xiaomi/mipush/sdk/am;->b(Lcom/xiaomi/push/im;)V

    goto/16 :goto_6d

    :cond_22a
    sget-object v0, Lcom/xiaomi/push/if;->B:Lcom/xiaomi/push/if;

    iget-object v0, v0, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    iget-object v2, v4, Lcom/xiaomi/push/im;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-direct {v1, v4}, Lcom/xiaomi/mipush/sdk/am;->a(Lcom/xiaomi/push/im;)V

    goto/16 :goto_6d

    :cond_23b
    instance-of v0, v4, Lcom/xiaomi/push/iu;

    if-eqz v0, :cond_6d

    check-cast v4, Lcom/xiaomi/push/iu;

    iget-object v0, v4, Lcom/xiaomi/push/iu;->d:Ljava/lang/String;

    const-string v3, "registration id expired"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f7

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getAllAlias(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getAllTopic(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getAllUserAccount(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getAcceptTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resp-type:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/xiaomi/push/iu;->d:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/xiaomi/push/iu;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/b;->e(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    sget-object v8, Lcom/xiaomi/push/ij;->a:Lcom/xiaomi/push/ij;

    invoke-static {v4, v8}, Lcom/xiaomi/mipush/sdk/MiPushClient;->reInitialize(Landroid/content/Context;Lcom/xiaomi/push/ij;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_290
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v8, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v8, v4}, Lcom/xiaomi/mipush/sdk/MiPushClient;->removeAlias(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v8, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v8, v4, v10}, Lcom/xiaomi/mipush/sdk/MiPushClient;->setAlias(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_290

    :cond_2a7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2ab
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->removeTopic(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v4, v2, v10}, Lcom/xiaomi/mipush/sdk/MiPushClient;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2ab

    :cond_2c2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2dd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->removeAccount(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v3, v2, v10}, Lcom/xiaomi/mipush/sdk/MiPushClient;->setUserAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c6

    :cond_2dd
    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6d

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->removeAcceptTime(Landroid/content/Context;)V

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    aget-object v3, v0, v7

    aget-object v0, v0, v6

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->addAcceptTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6d

    :cond_2f7
    sget-object v0, Lcom/xiaomi/push/if;->h:Lcom/xiaomi/push/if;

    iget-object v0, v0, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    iget-object v3, v4, Lcom/xiaomi/push/iu;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32c

    invoke-virtual {v4}, Lcom/xiaomi/push/iu;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_6d

    invoke-virtual {v4}, Lcom/xiaomi/push/iu;->a()Ljava/util/Map;

    move-result-object v0

    const-string v2, "app_version"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-virtual {v4}, Lcom/xiaomi/push/iu;->a()Ljava/util/Map;

    move-result-object v0

    const-string v2, "app_version"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/mipush/sdk/b;->a(Ljava/lang/String;)V

    goto/16 :goto_6d

    :cond_32c
    sget-object v0, Lcom/xiaomi/push/if;->m:Lcom/xiaomi/push/if;

    iget-object v0, v0, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    iget-object v3, v4, Lcom/xiaomi/push/iu;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37b

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/push/ir;->b()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-virtual {v4}, Lcom/xiaomi/push/iu;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_6d

    invoke-virtual {v4}, Lcom/xiaomi/push/iu;->a()Ljava/util/Map;

    move-result-object v0

    const-string v2, "awake_info"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-virtual {v4}, Lcom/xiaomi/push/iu;->a()Ljava/util/Map;

    move-result-object v0

    const-string v2, "awake_info"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/b;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ax;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/push/ia;->aF:Lcom/xiaomi/push/ia;

    invoke-virtual {v5}, Lcom/xiaomi/push/ia;->a()I

    move-result v5

    invoke-virtual {v4, v5, v7}, Lcom/xiaomi/push/service/ax;->a(II)I

    move-result v4

    invoke-static {v2, v3, v4, v0}, Lcom/xiaomi/mipush/sdk/o;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_6d

    :cond_37b
    sget-object v0, Lcom/xiaomi/push/if;->n:Lcom/xiaomi/push/if;

    iget-object v0, v0, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    iget-object v2, v4, Lcom/xiaomi/push/iu;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39e

    new-instance v0, Lcom/xiaomi/push/it;

    invoke-direct {v0}, Lcom/xiaomi/push/it;-><init>()V

    :try_start_38c
    invoke-virtual {v4}, Lcom/xiaomi/push/iu;->a()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;[B)V

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ax;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/xiaomi/push/service/ay;->a(Lcom/xiaomi/push/service/ax;Lcom/xiaomi/push/it;)V
    :try_end_39c
    .catch Lcom/xiaomi/push/jl; {:try_start_38c .. :try_end_39c} :catch_6d

    goto/16 :goto_6d

    :cond_39e
    sget-object v0, Lcom/xiaomi/push/if;->o:Lcom/xiaomi/push/if;

    iget-object v0, v0, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    iget-object v2, v4, Lcom/xiaomi/push/iu;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c1

    new-instance v0, Lcom/xiaomi/push/is;

    invoke-direct {v0}, Lcom/xiaomi/push/is;-><init>()V

    :try_start_3af
    invoke-virtual {v4}, Lcom/xiaomi/push/iu;->a()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;[B)V

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ax;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/xiaomi/push/service/ay;->a(Lcom/xiaomi/push/service/ax;Lcom/xiaomi/push/is;)V
    :try_end_3bf
    .catch Lcom/xiaomi/push/jl; {:try_start_3af .. :try_end_3bf} :catch_6d

    goto/16 :goto_6d

    :cond_3c1
    sget-object v0, Lcom/xiaomi/push/if;->w:Lcom/xiaomi/push/if;

    iget-object v0, v0, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    iget-object v2, v4, Lcom/xiaomi/push/iu;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d4

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/xiaomi/mipush/sdk/av;->a(Landroid/content/Context;Lcom/xiaomi/push/iu;)V

    goto/16 :goto_6d

    :cond_3d4
    sget-object v0, Lcom/xiaomi/push/if;->x:Lcom/xiaomi/push/if;

    iget-object v0, v0, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    iget-object v2, v4, Lcom/xiaomi/push/iu;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3ec

    const-string v0, "receive force sync notification"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/xiaomi/mipush/sdk/av;->a(Landroid/content/Context;Z)V

    goto/16 :goto_6d

    :cond_3ec
    sget-object v0, Lcom/xiaomi/push/if;->C:Lcom/xiaomi/push/if;

    iget-object v0, v0, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    iget-object v2, v4, Lcom/xiaomi/push/iu;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_492

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resp-type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lcom/xiaomi/push/iu;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/xiaomi/push/iu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->e(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/xiaomi/push/iu;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_48d

    invoke-virtual {v4}, Lcom/xiaomi/push/iu;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/push/service/bh;->N:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x2

    if-eqz v0, :cond_449

    invoke-virtual {v4}, Lcom/xiaomi/push/iu;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v3, Lcom/xiaomi/push/service/bh;->N:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_449

    :try_start_43f
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_443
    .catch Ljava/lang/NumberFormatException; {:try_start_43f .. :try_end_443} :catch_444

    goto :goto_449

    :catch_444
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_449
    :goto_449
    const/4 v0, -0x1

    if-lt v2, v0, :cond_452

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->clearNotification(Landroid/content/Context;I)V

    goto :goto_48d

    :cond_452
    invoke-virtual {v4}, Lcom/xiaomi/push/iu;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/push/service/bh;->L:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46b

    invoke-virtual {v4}, Lcom/xiaomi/push/iu;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/push/service/bh;->L:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_46d

    :cond_46b
    const-string v0, ""

    :goto_46d
    invoke-virtual {v4}, Lcom/xiaomi/push/iu;->a()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/push/service/bh;->M:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_486

    invoke-virtual {v4}, Lcom/xiaomi/push/iu;->a()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/push/service/bh;->M:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_488

    :cond_486
    const-string v2, ""

    :goto_488
    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v3, v0, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->clearNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_48d
    :goto_48d
    invoke-direct {v1, v4}, Lcom/xiaomi/mipush/sdk/am;->a(Lcom/xiaomi/push/iu;)V

    goto/16 :goto_6d

    :cond_492
    sget-object v0, Lcom/xiaomi/push/if;->K:Lcom/xiaomi/push/if;

    iget-object v0, v0, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    iget-object v2, v4, Lcom/xiaomi/push/iu;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b7

    :try_start_49e
    new-instance v0, Lcom/xiaomi/push/iw;

    invoke-direct {v0}, Lcom/xiaomi/push/iw;-><init>()V

    invoke-virtual {v4}, Lcom/xiaomi/push/iu;->a()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;[B)V

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/xiaomi/mipush/sdk/MiPushClient4Hybrid;->onReceiveRegisterResult(Landroid/content/Context;Lcom/xiaomi/push/iw;)V
    :try_end_4af
    .catch Lcom/xiaomi/push/jl; {:try_start_49e .. :try_end_4af} :catch_4b1

    goto/16 :goto_6d

    :catch_4b1
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_6d

    :cond_4b7
    sget-object v0, Lcom/xiaomi/push/if;->M:Lcom/xiaomi/push/if;

    iget-object v0, v0, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    iget-object v2, v4, Lcom/xiaomi/push/iu;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d6

    :try_start_4c3
    new-instance v0, Lcom/xiaomi/push/jc;

    invoke-direct {v0}, Lcom/xiaomi/push/jc;-><init>()V

    invoke-virtual {v4}, Lcom/xiaomi/push/iu;->a()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;[B)V

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/xiaomi/mipush/sdk/MiPushClient4Hybrid;->onReceiveUnregisterResult(Landroid/content/Context;Lcom/xiaomi/push/jc;)V
    :try_end_4d4
    .catch Lcom/xiaomi/push/jl; {:try_start_4c3 .. :try_end_4d4} :catch_4b1

    goto/16 :goto_6d

    :cond_4d6
    sget-object v0, Lcom/xiaomi/push/if;->P:Lcom/xiaomi/push/if;

    iget-object v0, v0, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    iget-object v2, v4, Lcom/xiaomi/push/iu;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e4

    goto/16 :goto_6d

    :cond_4e4
    sget-object v0, Lcom/xiaomi/push/if;->af:Lcom/xiaomi/push/if;

    iget-object v0, v0, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    iget-object v2, v4, Lcom/xiaomi/push/iu;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4fa

    const-string v0, "receive detect msg"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Lcom/xiaomi/mipush/sdk/am;->b(Lcom/xiaomi/push/iu;)V

    goto/16 :goto_6d

    :cond_4fa
    invoke-static {v4}, Lcom/xiaomi/push/service/i;->a(Lcom/xiaomi/push/iu;)Z

    move-result v0

    if-eqz v0, :cond_6d

    const-string v0, "receive notification handle by cpra"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    goto/16 :goto_6d

    :pswitch_507
    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    sget-object v5, Lcom/xiaomi/push/hv;->j:Lcom/xiaomi/push/hv;

    array-length v0, v0

    invoke-static {v2, v3, v4, v5, v0}, Lcom/xiaomi/push/da;->a(Ljava/lang/String;Landroid/content/Context;Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;I)V

    check-cast v4, Lcom/xiaomi/push/iq;

    invoke-virtual {v4}, Lcom/xiaomi/push/iq;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lcom/xiaomi/push/iq;->a()Ljava/util/List;

    move-result-object v2

    iget-wide v8, v4, Lcom/xiaomi/push/iq;->a:J

    cmp-long v3, v8, v11

    if-nez v3, :cond_606

    sget-object v3, Lcom/xiaomi/push/fl;->i:Lcom/xiaomi/push/fl;

    iget-object v3, v3, Lcom/xiaomi/push/fl;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_583

    if-eqz v2, :cond_583

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v6, :cond_583

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v3, v5, v8}, Lcom/xiaomi/mipush/sdk/MiPushClient;->addAcceptTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "00:00"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56a

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "00:00"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56a

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/xiaomi/mipush/sdk/b;->a(Z)V

    goto :goto_573

    :cond_56a
    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/xiaomi/mipush/sdk/b;->a(Z)V

    :goto_573
    const-string v3, "GMT+08"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v1, v3, v5, v2}, Lcom/xiaomi/mipush/sdk/am;->a(Ljava/util/TimeZone;Ljava/util/TimeZone;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_606

    :cond_583
    sget-object v3, Lcom/xiaomi/push/fl;->c:Lcom/xiaomi/push/fl;

    iget-object v3, v3, Lcom/xiaomi/push/fl;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5a1

    if-eqz v2, :cond_5a1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5a1

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/xiaomi/mipush/sdk/MiPushClient;->addAlias(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_606

    :cond_5a1
    sget-object v3, Lcom/xiaomi/push/fl;->d:Lcom/xiaomi/push/fl;

    iget-object v3, v3, Lcom/xiaomi/push/fl;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5bf

    if-eqz v2, :cond_5bf

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5bf

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/xiaomi/mipush/sdk/MiPushClient;->removeAlias(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_606

    :cond_5bf
    sget-object v3, Lcom/xiaomi/push/fl;->e:Lcom/xiaomi/push/fl;

    iget-object v3, v3, Lcom/xiaomi/push/fl;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5dd

    if-eqz v2, :cond_5dd

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5dd

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/xiaomi/mipush/sdk/MiPushClient;->addAccount(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_606

    :cond_5dd
    sget-object v3, Lcom/xiaomi/push/fl;->f:Lcom/xiaomi/push/fl;

    iget-object v3, v3, Lcom/xiaomi/push/fl;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5fb

    if-eqz v2, :cond_5fb

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5fb

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/xiaomi/mipush/sdk/MiPushClient;->removeAccount(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_606

    :cond_5fb
    sget-object v3, Lcom/xiaomi/push/fl;->j:Lcom/xiaomi/push/fl;

    iget-object v3, v3, Lcom/xiaomi/push/fl;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_606

    return-object v10

    :cond_606
    :goto_606
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resp-cmd:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/xiaomi/push/iq;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/b;->e(Ljava/lang/String;)V

    iget-wide v5, v4, Lcom/xiaomi/push/iq;->a:J

    iget-object v3, v4, Lcom/xiaomi/push/iq;->d:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/xiaomi/push/iq;->c()Ljava/lang/String;

    move-result-object v4

    move-object/from16 p1, v0

    move-object/from16 p2, v2

    move-wide/from16 p3, v5

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    invoke-static/range {p1 .. p6}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->generateCommandMessage(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v0

    return-object v0

    :pswitch_63d
    check-cast v4, Lcom/xiaomi/push/je;

    iget-wide v2, v4, Lcom/xiaomi/push/je;->a:J

    cmp-long v0, v2, v11

    if-nez v0, :cond_64e

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/xiaomi/push/je;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->removeTopic(Landroid/content/Context;Ljava/lang/String;)V

    :cond_64e
    invoke-virtual {v4}, Lcom/xiaomi/push/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_664

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Lcom/xiaomi/push/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resp-cmd:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaomi/push/fl;->h:Lcom/xiaomi/push/fl;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/xiaomi/push/je;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/push/fl;->h:Lcom/xiaomi/push/fl;

    iget-object v0, v0, Lcom/xiaomi/push/fl;->a:Ljava/lang/String;

    iget-wide v2, v4, Lcom/xiaomi/push/je;->a:J

    iget-object v5, v4, Lcom/xiaomi/push/je;->d:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/xiaomi/push/je;->c()Ljava/lang/String;

    move-result-object v4

    move-object/from16 p1, v0

    move-object/from16 p2, v10

    move-wide/from16 p3, v2

    move-object/from16 p5, v5

    move-object/from16 p6, v4

    invoke-static/range {p1 .. p6}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->generateCommandMessage(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v0

    return-object v0

    :pswitch_6a1
    check-cast v4, Lcom/xiaomi/push/ja;

    iget-wide v2, v4, Lcom/xiaomi/push/ja;->a:J

    cmp-long v0, v2, v11

    if-nez v0, :cond_6b2

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/xiaomi/push/ja;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->addTopic(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6b2
    invoke-virtual {v4}, Lcom/xiaomi/push/ja;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c8

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Lcom/xiaomi/push/ja;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6c8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resp-cmd:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaomi/push/fl;->g:Lcom/xiaomi/push/fl;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/xiaomi/push/ja;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/push/fl;->g:Lcom/xiaomi/push/fl;

    iget-object v0, v0, Lcom/xiaomi/push/fl;->a:Ljava/lang/String;

    iget-wide v2, v4, Lcom/xiaomi/push/ja;->a:J

    iget-object v5, v4, Lcom/xiaomi/push/ja;->d:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/xiaomi/push/ja;->c()Ljava/lang/String;

    move-result-object v4

    move-object/from16 p1, v0

    move-object/from16 p2, v10

    move-wide/from16 p3, v2

    move-object/from16 p5, v5

    move-object/from16 p6, v4

    invoke-static/range {p1 .. p6}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->generateCommandMessage(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v0

    return-object v0

    :pswitch_705
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/push/ir;->b()Z

    move-result v0

    if-nez v0, :cond_711

    const-string v0, "receiving an un-encrypt message(UnRegistration)."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    return-object v10

    :cond_711
    check-cast v4, Lcom/xiaomi/push/jc;

    iget-wide v2, v4, Lcom/xiaomi/push/jc;->a:J

    cmp-long v0, v2, v11

    if-nez v0, :cond_727

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/b;->a()V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->clearExtras(Landroid/content/Context;)V

    :cond_727
    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a()V

    goto/16 :goto_6d

    :pswitch_72c
    move-object v0, v4

    check-cast v0, Lcom/xiaomi/push/iw;

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object v2

    iget-object v2, v2, Lcom/xiaomi/mipush/sdk/b;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7cc

    invoke-virtual {v0}, Lcom/xiaomi/push/iw;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_749

    goto/16 :goto_7cc

    :cond_749
    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object v2

    iput-object v10, v2, Lcom/xiaomi/mipush/sdk/b;->a:Ljava/lang/String;

    iget-wide v2, v0, Lcom/xiaomi/push/iw;->a:J

    cmp-long v2, v2, v11

    if-nez v2, :cond_780

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object v2

    iget-object v3, v0, Lcom/xiaomi/push/iw;->e:Ljava/lang/String;

    iget-object v4, v0, Lcom/xiaomi/push/iw;->f:Ljava/lang/String;

    iget-object v5, v0, Lcom/xiaomi/push/iw;->l:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/xiaomi/mipush/sdk/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/FCMPushHelper;->persistIfXmsfSupDecrypt(Landroid/content/Context;)V

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/en;->a(Landroid/content/Context;)Lcom/xiaomi/push/en;

    move-result-object v2

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/push/em;->a(I)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x1776

    const-string v7, "1"

    goto :goto_794

    :cond_780
    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/en;->a(Landroid/content/Context;)Lcom/xiaomi/push/en;

    move-result-object v2

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/push/em;->a(I)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x1776

    const-string v7, "2"

    :goto_794
    move-object/from16 v5, p4

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/push/en;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v2, v0, Lcom/xiaomi/push/iw;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7ab

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcom/xiaomi/push/iw;->e:Ljava/lang/String;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7ab
    sget-object v2, Lcom/xiaomi/push/fl;->a:Lcom/xiaomi/push/fl;

    iget-object v2, v2, Lcom/xiaomi/push/fl;->a:Ljava/lang/String;

    iget-wide v3, v0, Lcom/xiaomi/push/iw;->a:J

    iget-object v0, v0, Lcom/xiaomi/push/iw;->d:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 p1, v2

    move-object/from16 p2, v10

    move-wide/from16 p3, v3

    move-object/from16 p5, v0

    move-object/from16 p6, v5

    invoke-static/range {p1 .. p6}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->generateCommandMessage(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v0

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/ao;->d()V

    return-object v0

    :cond_7cc
    :goto_7cc
    const-string v0, "bad Registration result:"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/en;->a(Landroid/content/Context;)Lcom/xiaomi/push/en;

    move-result-object v0

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/push/em;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "21"

    invoke-virtual {v0, v2, v3, v8, v4}, Lcom/xiaomi/push/en;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :pswitch_7e7
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/push/ir;->b()Z

    move-result v5

    if-nez v5, :cond_7f3

    const-string v0, "receiving an un-encrypt message(SendMessage)."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    return-object v10

    :cond_7f3
    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/b;->e()Z

    move-result v5

    if-eqz v5, :cond_81c

    if-nez v3, :cond_81c

    const-string v0, "receive a message in pause state. drop it"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/en;->a(Landroid/content/Context;)Lcom/xiaomi/push/en;

    move-result-object v0

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/push/em;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "12"

    invoke-virtual {v0, v2, v3, v8, v4}, Lcom/xiaomi/push/en;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :cond_81c
    check-cast v4, Lcom/xiaomi/push/iy;

    invoke-virtual {v4}, Lcom/xiaomi/push/iy;->a()Lcom/xiaomi/push/ih;

    move-result-object v5

    if-nez v5, :cond_844

    const-string v0, "receive an empty message without push content, drop it"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/en;->a(Landroid/content/Context;)Lcom/xiaomi/push/en;

    move-result-object v0

    iget-object v4, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/push/em;->a(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "22"

    invoke-virtual {v0, v4, v5, v8, v6}, Lcom/xiaomi/push/en;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mipush/sdk/s;->d(Landroid/content/Context;Lcom/xiaomi/push/ir;Z)V

    return-object v10

    :cond_844
    const-string v6, "notification_click_button"

    move-object/from16 v13, p6

    invoke-virtual {v13, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-eqz v3, :cond_8a5

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ir;)Z

    move-result v7

    if-eqz v7, :cond_868

    iget-object v7, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/xiaomi/push/ih;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/ii;

    move-result-object v14

    iget-object v15, v2, Lcom/xiaomi/push/ir;->b:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/xiaomi/push/ih;->b()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v13, v14, v15, v10}, Lcom/xiaomi/mipush/sdk/MiPushClient;->reportIgnoreRegMessageClicked(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/push/ii;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8a5

    :cond_868
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/ii;

    move-result-object v7

    if-eqz v7, :cond_878

    new-instance v7, Lcom/xiaomi/push/ii;

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/ii;

    move-result-object v10

    invoke-direct {v7, v10}, Lcom/xiaomi/push/ii;-><init>(Lcom/xiaomi/push/ii;)V

    goto :goto_87d

    :cond_878
    new-instance v7, Lcom/xiaomi/push/ii;

    invoke-direct {v7}, Lcom/xiaomi/push/ii;-><init>()V

    :goto_87d
    invoke-virtual {v7}, Lcom/xiaomi/push/ii;->a()Ljava/util/Map;

    move-result-object v10

    if-nez v10, :cond_88b

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v7, v10}, Lcom/xiaomi/push/ii;->a(Ljava/util/Map;)Lcom/xiaomi/push/ii;

    :cond_88b
    invoke-virtual {v7}, Lcom/xiaomi/push/ii;->a()Ljava/util/Map;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "notification_click_button"

    invoke-interface {v10, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/xiaomi/push/ih;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5}, Lcom/xiaomi/push/ih;->b()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v13, v7, v14}, Lcom/xiaomi/mipush/sdk/MiPushClient;->reportMessageClicked(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/push/ii;Ljava/lang/String;)V

    :cond_8a5
    :goto_8a5
    if-nez v3, :cond_8ea

    invoke-virtual {v4}, Lcom/xiaomi/push/iy;->d()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8c9

    iget-object v7, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/xiaomi/push/iy;->d()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/xiaomi/mipush/sdk/MiPushClient;->aliasSetTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v13

    cmp-long v7, v13, v11

    if-gez v7, :cond_8c9

    iget-object v7, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/xiaomi/push/iy;->d()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/xiaomi/mipush/sdk/MiPushClient;->addAlias(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8ea

    :cond_8c9
    invoke-virtual {v4}, Lcom/xiaomi/push/iy;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8ea

    iget-object v7, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/xiaomi/push/iy;->c()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/xiaomi/mipush/sdk/MiPushClient;->topicSubscribedTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v13

    cmp-long v7, v13, v11

    if-gez v7, :cond_8ea

    iget-object v7, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/xiaomi/push/iy;->c()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/xiaomi/mipush/sdk/MiPushClient;->addTopic(Landroid/content/Context;Ljava/lang/String;)V

    :cond_8ea
    :goto_8ea
    iget-object v7, v2, Lcom/xiaomi/push/ir;->a:Lcom/xiaomi/push/ii;

    if-eqz v7, :cond_905

    iget-object v7, v2, Lcom/xiaomi/push/ir;->a:Lcom/xiaomi/push/ii;

    invoke-virtual {v7}, Lcom/xiaomi/push/ii;->a()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_905

    iget-object v7, v2, Lcom/xiaomi/push/ir;->a:Lcom/xiaomi/push/ii;

    iget-object v7, v7, Lcom/xiaomi/push/ii;->a:Ljava/util/Map;

    const-string v10, "jobkey"

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Ljava/lang/String;

    move-object v7, v10

    goto :goto_907

    :cond_905
    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_907
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_911

    invoke-virtual {v5}, Lcom/xiaomi/push/ih;->a()Ljava/lang/String;

    move-result-object v10

    :cond_911
    if-nez v3, :cond_956

    iget-object v11, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v11, v10}, Lcom/xiaomi/mipush/sdk/am;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_956

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drop a duplicate message, key="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/en;->a(Landroid/content/Context;)Lcom/xiaomi/push/en;

    move-result-object v0

    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/push/em;->a(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "2:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v8, v7}, Lcom/xiaomi/push/en;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    goto/16 :goto_aad

    :cond_956
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/ii;

    move-result-object v11

    invoke-static {v4, v11, v3}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->generateMessage(Lcom/xiaomi/push/iy;Lcom/xiaomi/push/ii;Z)Lcom/xiaomi/mipush/sdk/MiPushMessage;

    move-result-object v11

    invoke-virtual {v11}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getPassThrough()I

    move-result v12

    if-nez v12, :cond_977

    if-nez v3, :cond_977

    invoke-virtual {v11}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v12

    invoke-static {v12}, Lcom/xiaomi/push/service/aj;->a(Ljava/util/Map;)Z

    move-result v12

    if-eqz v12, :cond_977

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v3, v2, v0}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Lcom/xiaomi/push/ir;[B)Lcom/xiaomi/push/service/aj$c;

    :goto_975
    const/4 v2, 0x0

    return-object v2

    :cond_977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "receive a message, msgid="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/xiaomi/push/ih;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", jobkey="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", btn="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/xiaomi/push/service/aj;->a(Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_aad

    invoke-virtual {v11}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v10

    if-eqz v10, :cond_aad

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_aad

    invoke-virtual {v11}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v3

    if-eqz v6, :cond_9d2

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/ii;

    move-result-object v4

    if-eqz v4, :cond_9d2

    iget-object v4, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ao;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/ii;

    move-result-object v10

    invoke-virtual {v10}, Lcom/xiaomi/push/ii;->c()I

    move-result v10

    invoke-virtual {v4, v10, v6}, Lcom/xiaomi/mipush/sdk/ao;->a(II)V

    :cond_9d2
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ir;)Z

    move-result v4

    if-eqz v4, :cond_a3f

    iget-object v4, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    iget-object v10, v2, Lcom/xiaomi/push/ir;->b:Ljava/lang/String;

    invoke-static {v4, v10, v3, v6}, Lcom/xiaomi/mipush/sdk/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "eventMessageType"

    invoke-virtual {v3, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "messageId"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "jobkey"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez v3, :cond_a0d

    const-string v0, "Getting Intent fail from ignore reg message. "

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/en;->a(Landroid/content/Context;)Lcom/xiaomi/push/en;

    move-result-object v0

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/push/em;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "23"

    invoke-virtual {v0, v2, v3, v8, v4}, Lcom/xiaomi/push/en;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_975

    :cond_a0d
    invoke-virtual {v5}, Lcom/xiaomi/push/ih;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a1c

    const-string v5, "payload"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_a1c
    iget-object v4, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;Lcom/xiaomi/push/ir;)V

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/en;->a(Landroid/content/Context;)Lcom/xiaomi/push/en;

    move-result-object v2

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/push/em;->a(I)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0xbbe

    move-object/from16 v5, p4

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/push/en;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_aab

    :cond_a3f
    iget-object v4, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3, v6}, Lcom/xiaomi/mipush/sdk/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_aab

    sget-object v4, Lcom/xiaomi/push/service/bh;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a67

    const-string v4, "key_message"

    invoke-virtual {v3, v4, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "eventMessageType"

    invoke-virtual {v3, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "messageId"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "jobkey"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_a67
    iget-object v4, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;Lcom/xiaomi/push/ir;)V

    const-string v2, "start activity succ"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/en;->a(Landroid/content/Context;)Lcom/xiaomi/push/en;

    move-result-object v2

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/push/em;->a(I)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x3ee

    move-object/from16 v5, p4

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/push/en;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    sget-object v2, Lcom/xiaomi/push/service/bh;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aab

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/en;->a(Landroid/content/Context;)Lcom/xiaomi/push/en;

    move-result-object v0

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/push/em;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "13"

    invoke-virtual {v0, v2, v3, v8, v4}, Lcom/xiaomi/push/en;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_aab
    :goto_aab
    const/4 v2, 0x0

    return-object v2

    :cond_aad
    :goto_aad
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/ii;

    move-result-object v0

    if-nez v0, :cond_ab8

    if-nez v3, :cond_ab8

    invoke-direct {v1, v4, v2}, Lcom/xiaomi/mipush/sdk/am;->a(Lcom/xiaomi/push/iy;Lcom/xiaomi/push/ir;)V

    :cond_ab8
    return-object v11

    :goto_ab9
    return-object v2

    :catch_aba
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    const-string v0, "receive a message which action string is not valid. is the reg expired?"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/en;->a(Landroid/content/Context;)Lcom/xiaomi/push/en;

    move-result-object v0

    iget-object v4, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/push/em;->a(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "20"

    :goto_ad5
    invoke-virtual {v0, v4, v5, v8, v6}, Lcom/xiaomi/push/en;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mipush/sdk/s;->c(Landroid/content/Context;Lcom/xiaomi/push/ir;Z)V

    goto/16 :goto_975

    :catch_adf
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    invoke-direct/range {p0 .. p1}, Lcom/xiaomi/mipush/sdk/am;->a(Lcom/xiaomi/push/ir;)V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/en;->a(Landroid/content/Context;)Lcom/xiaomi/push/en;

    move-result-object v0

    iget-object v4, v1, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/push/em;->a(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "19"

    goto :goto_ad5

    nop

    :pswitch_data_afa
    .packed-switch 0x1
        :pswitch_7e7
        :pswitch_72c
        :pswitch_705
        :pswitch_6a1
        :pswitch_63d
        :pswitch_507
        :pswitch_70
    .end packed-switch
.end method

.method private a(Lcom/xiaomi/push/ir;[B)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;
    .registers 7

    const/4 p2, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaomi/mipush/sdk/ai;->a(Landroid/content/Context;Lcom/xiaomi/push/ir;)Lcom/xiaomi/push/jg;

    move-result-object v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message arrived: receiving an un-recognized message. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/xiaomi/push/ir;->a:Lcom/xiaomi/push/hv;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V
    :try_end_1f
    .catch Lcom/xiaomi/mipush/sdk/u; {:try_start_1 .. :try_end_1f} :catch_a7
    .catch Lcom/xiaomi/push/jl; {:try_start_1 .. :try_end_1f} :catch_a0

    return-object p2

    :cond_20
    invoke-virtual {p1}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/hv;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message arrived: processing an arrived message, action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/mipush/sdk/an;->a:[I

    invoke-virtual {v1}, Lcom/xiaomi/push/hv;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_44

    return-object p2

    :cond_44
    invoke-virtual {p1}, Lcom/xiaomi/push/ir;->b()Z

    move-result v1

    if-nez v1, :cond_50

    const-string p1, "message arrived: receiving an un-encrypt message(SendMessage)."

    :goto_4c
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    return-object p2

    :cond_50
    check-cast v0, Lcom/xiaomi/push/iy;

    invoke-virtual {v0}, Lcom/xiaomi/push/iy;->a()Lcom/xiaomi/push/ih;

    move-result-object v1

    if-nez v1, :cond_5b

    const-string p1, "message arrived: receive an empty message without push content, drop it"

    goto :goto_4c

    :cond_5b
    iget-object v3, p1, Lcom/xiaomi/push/ir;->a:Lcom/xiaomi/push/ii;

    if-eqz v3, :cond_73

    iget-object v3, p1, Lcom/xiaomi/push/ir;->a:Lcom/xiaomi/push/ii;

    invoke-virtual {v3}, Lcom/xiaomi/push/ii;->a()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_73

    iget-object p2, p1, Lcom/xiaomi/push/ir;->a:Lcom/xiaomi/push/ii;

    iget-object p2, p2, Lcom/xiaomi/push/ii;->a:Ljava/util/Map;

    const-string v3, "jobkey"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :cond_73
    invoke-virtual {p1}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/ii;

    move-result-object p1

    const/4 v3, 0x0

    invoke-static {v0, p1, v3}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->generateMessage(Lcom/xiaomi/push/iy;Lcom/xiaomi/push/ii;Z)Lcom/xiaomi/mipush/sdk/MiPushMessage;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->setArrivedMessage(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message arrived: receive a message, msgid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaomi/push/ih;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", jobkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-object p1

    :catch_a0
    move-exception p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    const-string p1, "message arrived: receive a message which action string is not valid. is the reg expired?"

    goto :goto_4c

    :catch_a7
    move-exception p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    const-string p1, "message arrived: receive a message but decrypt failed. report when click."

    goto :goto_4c
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/am;
    .registers 2

    sget-object v0, Lcom/xiaomi/mipush/sdk/am;->a:Lcom/xiaomi/mipush/sdk/am;

    if-nez v0, :cond_b

    new-instance v0, Lcom/xiaomi/mipush/sdk/am;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/am;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/am;->a:Lcom/xiaomi/mipush/sdk/am;

    :cond_b
    sget-object p0, Lcom/xiaomi/mipush/sdk/am;->a:Lcom/xiaomi/mipush/sdk/am;

    return-object p0
.end method

.method private a()V
    .registers 9

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "last_reinitialize"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long v4, v1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x1b7740

    cmp-long v4, v4, v6

    if-lez v4, :cond_34

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    sget-object v5, Lcom/xiaomi/push/ij;->b:Lcom/xiaomi/push/ij;

    invoke-static {v4, v5}, Lcom/xiaomi/mipush/sdk/MiPushClient;->reInitialize(Landroid/content/Context;Lcom/xiaomi/push/ij;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_34
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/xiaomi/mipush/sdk/am;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/xiaomi/mipush/sdk/am;->a:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    sget-object p1, Lcom/xiaomi/mipush/sdk/am;->a:Ljava/util/Queue;

    const-string v1, ","

    invoke-static {p1, v1}, Lcom/xiaomi/push/bo;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "pref_msg_ids"

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {p0}, Lcom/xiaomi/push/s;->a(Landroid/content/SharedPreferences$Editor;)V

    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method private a(Lcom/xiaomi/push/im;)V
    .registers 9

    invoke-virtual {p1}, Lcom/xiaomi/push/im;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive ack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/im;->a()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_60

    const-string v2, "real_source"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_60

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive ack : messageId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  realSource = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/bw;->a(Landroid/content/Context;)Lcom/xiaomi/push/bw;

    move-result-object v2

    iget-wide v3, p1, Lcom/xiaomi/push/im;->a:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-nez p1, :cond_58

    const/4 p1, 0x1

    goto :goto_59

    :cond_58
    const/4 p1, 0x0

    :goto_59
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, v0, v1, p1}, Lcom/xiaomi/push/bw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_60
    return-void
.end method

.method private a(Lcom/xiaomi/push/ir;)V
    .registers 6

    const-string v0, "receive a message but decrypt failed. report now."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/push/iu;

    invoke-virtual {p1}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/ii;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/push/ii;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/iu;-><init>(Ljava/lang/String;Z)V

    sget-object v1, Lcom/xiaomi/push/if;->u:Lcom/xiaomi/push/if;

    iget-object v1, v1, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/iu;->c(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    invoke-virtual {p1}, Lcom/xiaomi/push/ir;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/iu;->b(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    iget-object p1, p1, Lcom/xiaomi/push/ir;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/iu;->d(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, v0, Lcom/xiaomi/push/iu;->a:Ljava/util/Map;

    iget-object p1, v0, Lcom/xiaomi/push/iu;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getRegId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "regid"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ao;

    move-result-object p1

    sget-object v1, Lcom/xiaomi/push/hv;->i:Lcom/xiaomi/push/hv;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;ZLcom/xiaomi/push/ii;)V

    return-void
.end method

.method private a(Lcom/xiaomi/push/iu;)V
    .registers 12

    new-instance v1, Lcom/xiaomi/push/im;

    invoke-direct {v1}, Lcom/xiaomi/push/im;-><init>()V

    sget-object v0, Lcom/xiaomi/push/if;->D:Lcom/xiaomi/push/if;

    iget-object v0, v0, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/im;->c(Ljava/lang/String;)Lcom/xiaomi/push/im;

    invoke-virtual {p1}, Lcom/xiaomi/push/iu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/im;->a(Ljava/lang/String;)Lcom/xiaomi/push/im;

    invoke-virtual {p1}, Lcom/xiaomi/push/iu;->a()Lcom/xiaomi/push/ik;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/im;->a(Lcom/xiaomi/push/ik;)Lcom/xiaomi/push/im;

    invoke-virtual {p1}, Lcom/xiaomi/push/iu;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/im;->b(Ljava/lang/String;)Lcom/xiaomi/push/im;

    invoke-virtual {p1}, Lcom/xiaomi/push/iu;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/xiaomi/push/im;->e(Ljava/lang/String;)Lcom/xiaomi/push/im;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/push/im;->a(J)Lcom/xiaomi/push/im;

    const-string p1, "success clear push message."

    invoke-virtual {v1, p1}, Lcom/xiaomi/push/im;->d(Ljava/lang/String;)Lcom/xiaomi/push/im;

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ao;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/push/hv;->i:Lcom/xiaomi/push/hv;

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/b;->a()Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;ZZLcom/xiaomi/push/ii;ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Lcom/xiaomi/push/iy;Lcom/xiaomi/push/ir;)V
    .registers 7

    invoke-virtual {p2}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/ii;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/xiaomi/push/ii;->a()Lcom/xiaomi/push/ii;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/bo;->a(Lcom/xiaomi/push/ii;)Lcom/xiaomi/push/ii;

    move-result-object v0

    :cond_e
    new-instance v1, Lcom/xiaomi/push/il;

    invoke-direct {v1}, Lcom/xiaomi/push/il;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/push/iy;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/il;->b(Ljava/lang/String;)Lcom/xiaomi/push/il;

    invoke-virtual {p1}, Lcom/xiaomi/push/iy;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/il;->a(Ljava/lang/String;)Lcom/xiaomi/push/il;

    invoke-virtual {p1}, Lcom/xiaomi/push/iy;->a()Lcom/xiaomi/push/ih;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/push/ih;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/push/il;->a(J)Lcom/xiaomi/push/il;

    invoke-virtual {p1}, Lcom/xiaomi/push/iy;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-virtual {p1}, Lcom/xiaomi/push/iy;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/il;->c(Ljava/lang/String;)Lcom/xiaomi/push/il;

    :cond_3d
    invoke-virtual {p1}, Lcom/xiaomi/push/iy;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4e

    invoke-virtual {p1}, Lcom/xiaomi/push/iy;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/xiaomi/push/il;->d(Ljava/lang/String;)Lcom/xiaomi/push/il;

    :cond_4e
    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/xiaomi/push/jf;->a(Landroid/content/Context;Lcom/xiaomi/push/ir;)S

    move-result p1

    invoke-virtual {v1, p1}, Lcom/xiaomi/push/il;->a(S)Lcom/xiaomi/push/il;

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ao;

    move-result-object p1

    sget-object p2, Lcom/xiaomi/push/hv;->f:Lcom/xiaomi/push/hv;

    invoke-virtual {p1, v1, p2, v0}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;Lcom/xiaomi/push/ii;)V

    return-void
.end method

.method private a(Ljava/lang/String;JLcom/xiaomi/mipush/sdk/e;)V
    .registers 8

    invoke-static {p4}, Lcom/xiaomi/mipush/sdk/l;->a(Lcom/xiaomi/mipush/sdk/e;)Lcom/xiaomi/mipush/sdk/au;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-wide/16 v1, 0x0

    cmp-long p2, p2, v1

    if-nez p2, :cond_47

    const-class p2, Lcom/xiaomi/mipush/sdk/af;

    monitor-enter p2

    :try_start_10
    iget-object p3, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/xiaomi/mipush/sdk/af;->a(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_42

    iget-object p3, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/xiaomi/mipush/sdk/af;->c(Ljava/lang/String;)V

    const-string p1, "syncing"

    iget-object p3, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/xiaomi/mipush/sdk/af;->a(Lcom/xiaomi/mipush/sdk/au;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object p1

    const-string p3, "synced"

    invoke-virtual {p1, v0, p3}, Lcom/xiaomi/mipush/sdk/af;->a(Lcom/xiaomi/mipush/sdk/au;Ljava/lang/String;)V

    :cond_42
    monitor-exit p2

    goto :goto_a0

    :catchall_44
    move-exception p1

    monitor-exit p2
    :try_end_46
    .catchall {:try_start_10 .. :try_end_46} :catchall_44

    throw p1

    :cond_47
    iget-object p2, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/xiaomi/mipush/sdk/af;->a(Lcom/xiaomi/mipush/sdk/au;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "syncing"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_97

    const-class p2, Lcom/xiaomi/mipush/sdk/af;

    monitor-enter p2

    :try_start_5c
    iget-object p3, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/xiaomi/mipush/sdk/af;->a(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_92

    iget-object p3, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/xiaomi/mipush/sdk/af;->a(Ljava/lang/String;)I

    move-result p3

    const/16 v1, 0xa

    if-ge p3, v1, :cond_89

    iget-object p3, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/xiaomi/mipush/sdk/af;->b(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ao;

    move-result-object p3

    invoke-virtual {p3, p1, v0, p4}, Lcom/xiaomi/mipush/sdk/ao;->a(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/au;Lcom/xiaomi/mipush/sdk/e;)V

    goto :goto_92

    :cond_89
    iget-object p3, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/xiaomi/mipush/sdk/af;->c(Ljava/lang/String;)V

    :cond_92
    :goto_92
    monitor-exit p2

    goto :goto_a0

    :catchall_94
    move-exception p1

    monitor-exit p2
    :try_end_96
    .catchall {:try_start_5c .. :try_end_96} :catchall_94

    throw p1

    :cond_97
    iget-object p2, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaomi/mipush/sdk/af;->c(Ljava/lang/String;)V

    :goto_a0
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9

    sget-object v0, Lcom/xiaomi/mipush/sdk/am;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    sget-object v1, Lcom/xiaomi/mipush/sdk/am;->a:Ljava/util/Queue;

    const/4 v2, 0x0

    if-nez v1, :cond_32

    const-string v1, "pref_msg_ids"

    const-string v3, ""

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    sput-object v3, Lcom/xiaomi/mipush/sdk/am;->a:Ljava/util/Queue;

    array-length v3, v1

    move v4, v2

    :goto_26
    if-ge v4, v3, :cond_32

    aget-object v5, v1, v4

    sget-object v6, Lcom/xiaomi/mipush/sdk/am;->a:Ljava/util/Queue;

    invoke-interface {v6, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    :cond_32
    sget-object v1, Lcom/xiaomi/mipush/sdk/am;->a:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_3d
    sget-object v1, Lcom/xiaomi/mipush/sdk/am;->a:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/xiaomi/mipush/sdk/am;->a:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    const/16 v1, 0x19

    if-le p1, v1, :cond_51

    sget-object p1, Lcom/xiaomi/mipush/sdk/am;->a:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :cond_51
    sget-object p1, Lcom/xiaomi/mipush/sdk/am;->a:Ljava/util/Queue;

    const-string v1, ","

    invoke-static {p1, v1}, Lcom/xiaomi/push/bo;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "pref_msg_ids"

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {p0}, Lcom/xiaomi/push/s;->a(Landroid/content/SharedPreferences$Editor;)V

    monitor-exit v0

    return v2

    :catchall_67
    move-exception p0

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_67

    throw p0
.end method

.method private a(Lcom/xiaomi/push/ir;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/ii;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    goto :goto_10

    :cond_8
    invoke-virtual {p1}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/ii;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->a()Ljava/util/Map;

    move-result-object p1

    :goto_10
    const/4 v0, 0x0

    if-nez p1, :cond_14

    return v0

    :cond_14
    const-string v1, "push_server_action"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "hybrid_message"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "platform_message"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2d

    goto :goto_2e

    :cond_2d
    return v0

    :cond_2e
    :goto_2e
    const/4 p1, 0x1

    return p1
.end method

.method private b(Lcom/xiaomi/push/im;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ASSEMBLE_PUSH : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/push/im;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/im;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/im;->a()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_e7

    const-string v2, "RegInfo"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "brand:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/xiaomi/mipush/sdk/ag;->c:Lcom/xiaomi/mipush/sdk/ag;

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/ag;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_62

    const-string v2, "ASSEMBLE_PUSH : receive fcm token sync ack"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    sget-object v3, Lcom/xiaomi/mipush/sdk/e;->b:Lcom/xiaomi/mipush/sdk/e;

    invoke-static {v2, v3, v1}, Lcom/xiaomi/mipush/sdk/i;->b(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/e;Ljava/lang/String;)V

    iget-wide v1, p1, Lcom/xiaomi/push/im;->a:J

    sget-object p1, Lcom/xiaomi/mipush/sdk/e;->b:Lcom/xiaomi/mipush/sdk/e;

    :goto_5d
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/xiaomi/mipush/sdk/am;->a(Ljava/lang/String;JLcom/xiaomi/mipush/sdk/e;)V

    goto/16 :goto_e7

    :cond_62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/xiaomi/mipush/sdk/ag;->a:Lcom/xiaomi/mipush/sdk/ag;

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/ag;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8e

    const-string v2, "ASSEMBLE_PUSH : receive hw token sync ack"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    sget-object v3, Lcom/xiaomi/mipush/sdk/e;->a:Lcom/xiaomi/mipush/sdk/e;

    invoke-static {v2, v3, v1}, Lcom/xiaomi/mipush/sdk/i;->b(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/e;Ljava/lang/String;)V

    iget-wide v1, p1, Lcom/xiaomi/push/im;->a:J

    sget-object p1, Lcom/xiaomi/mipush/sdk/e;->a:Lcom/xiaomi/mipush/sdk/e;

    goto :goto_5d

    :cond_8e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/xiaomi/mipush/sdk/ag;->d:Lcom/xiaomi/mipush/sdk/ag;

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/ag;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ba

    const-string v2, "ASSEMBLE_PUSH : receive COS token sync ack"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    sget-object v3, Lcom/xiaomi/mipush/sdk/e;->c:Lcom/xiaomi/mipush/sdk/e;

    invoke-static {v2, v3, v1}, Lcom/xiaomi/mipush/sdk/i;->b(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/e;Ljava/lang/String;)V

    iget-wide v1, p1, Lcom/xiaomi/push/im;->a:J

    sget-object p1, Lcom/xiaomi/mipush/sdk/e;->c:Lcom/xiaomi/mipush/sdk/e;

    goto :goto_5d

    :cond_ba
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/xiaomi/mipush/sdk/ag;->e:Lcom/xiaomi/mipush/sdk/ag;

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/ag;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e7

    const-string v2, "ASSEMBLE_PUSH : receive FTOS token sync ack"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    sget-object v3, Lcom/xiaomi/mipush/sdk/e;->d:Lcom/xiaomi/mipush/sdk/e;

    invoke-static {v2, v3, v1}, Lcom/xiaomi/mipush/sdk/i;->b(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/e;Ljava/lang/String;)V

    iget-wide v1, p1, Lcom/xiaomi/push/im;->a:J

    sget-object p1, Lcom/xiaomi/mipush/sdk/e;->d:Lcom/xiaomi/mipush/sdk/e;

    goto/16 :goto_5d

    :cond_e7
    :goto_e7
    return-void
.end method

.method private b(Lcom/xiaomi/push/ir;)V
    .registers 6

    invoke-virtual {p1}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/ii;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/xiaomi/push/ii;->a()Lcom/xiaomi/push/ii;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/bo;->a(Lcom/xiaomi/push/ii;)Lcom/xiaomi/push/ii;

    move-result-object v0

    :cond_e
    new-instance v1, Lcom/xiaomi/push/il;

    invoke-direct {v1}, Lcom/xiaomi/push/il;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/push/ir;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/il;->b(Ljava/lang/String;)Lcom/xiaomi/push/il;

    invoke-virtual {v0}, Lcom/xiaomi/push/ii;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/il;->a(Ljava/lang/String;)Lcom/xiaomi/push/il;

    invoke-virtual {v0}, Lcom/xiaomi/push/ii;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/push/il;->a(J)Lcom/xiaomi/push/il;

    invoke-virtual {v0}, Lcom/xiaomi/push/ii;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    invoke-virtual {v0}, Lcom/xiaomi/push/ii;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/il;->c(Ljava/lang/String;)Lcom/xiaomi/push/il;

    :cond_39
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/xiaomi/push/jf;->a(Landroid/content/Context;Lcom/xiaomi/push/ir;)S

    move-result p1

    invoke-virtual {v1, p1}, Lcom/xiaomi/push/il;->a(S)Lcom/xiaomi/push/il;

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ao;

    move-result-object p1

    sget-object v2, Lcom/xiaomi/push/hv;->f:Lcom/xiaomi/push/hv;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;ZLcom/xiaomi/push/ii;)V

    return-void
.end method

.method private b(Lcom/xiaomi/push/iu;)V
    .registers 15

    const-string v0, ""

    const-string v1, ","

    invoke-virtual {p1}, Lcom/xiaomi/push/iu;->a()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_10

    const-string p1, "detect failed because null"

    :goto_c
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-void

    :cond_10
    const/4 v3, 0x0

    const-string v4, "pkgList"

    invoke-static {v2, v4, v3}, Lcom/xiaomi/push/service/av;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_22

    const-string p1, "detect failed because empty"

    goto :goto_c

    :cond_22
    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    :try_start_2c
    invoke-virtual {v5}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/push/v;->a(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_122

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    array-length v7, v4
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_40} :catch_128

    const/4 v8, 0x0

    move v9, v8

    :goto_42
    const-string v10, "~"

    if-ge v9, v7, :cond_5b

    :try_start_46
    aget-object v11, v4, v9

    invoke-virtual {v11, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x2

    if-lt v11, v12, :cond_58

    const/4 v11, 0x1

    aget-object v11, v10, v11

    aget-object v10, v10, v8

    invoke-virtual {v6, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_58
    add-int/lit8 v9, v9, 0x1

    goto :goto_42

    :cond_5b
    new-instance v4, Lcom/xiaomi/push/v$a;

    invoke-direct {v4, v10, v1}, Lcom/xiaomi/push/v$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_64
    :goto_64
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v9, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_64

    iget-object v9, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget v10, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/xiaomi/push/v$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/xiaomi/push/v$a;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    :cond_8f
    invoke-virtual {v4}, Lcom/xiaomi/push/v$a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_11c

    new-instance v5, Lcom/xiaomi/push/iu;

    invoke-direct {v5}, Lcom/xiaomi/push/iu;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/push/iu;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/xiaomi/push/iu;->a(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    invoke-virtual {p1}, Lcom/xiaomi/push/iu;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/xiaomi/push/iu;->b(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    invoke-virtual {p1}, Lcom/xiaomi/push/iu;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/xiaomi/push/iu;->d(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    sget-object p1, Lcom/xiaomi/push/if;->ag:Lcom/xiaomi/push/if;

    iget-object p1, p1, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    invoke-virtual {v5, p1}, Lcom/xiaomi/push/iu;->c(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, v5, Lcom/xiaomi/push/iu;->a:Ljava/util/Map;

    iget-object p1, v5, Lcom/xiaomi/push/iu;->a:Ljava/util/Map;

    const-string v7, "alive"

    invoke-virtual {v4}, Lcom/xiaomi/push/v$a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "reportNotAliveApp"

    const-string v4, "false"

    invoke-static {v2, p1, v4}, Lcom/xiaomi/push/service/av;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_110

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_110

    new-instance p1, Lcom/xiaomi/push/v$a;

    invoke-direct {p1, v0, v1}, Lcom/xiaomi/push/v$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ef
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_105

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Lcom/xiaomi/push/v$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/xiaomi/push/v$a;

    goto :goto_ef

    :cond_105
    iget-object v0, v5, Lcom/xiaomi/push/iu;->a:Ljava/util/Map;

    const-string v1, "notAlive"

    invoke-virtual {p1}, Lcom/xiaomi/push/v$a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_110
    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ao;

    move-result-object p1

    sget-object v0, Lcom/xiaomi/push/hv;->i:Lcom/xiaomi/push/hv;

    invoke-virtual {p1, v5, v0, v8, v3}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;ZLcom/xiaomi/push/ii;)V

    goto :goto_13d

    :cond_11c
    const-string p1, "detect failed because no alive process"

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    goto :goto_13d

    :cond_122
    const-string p1, "detect failed because params illegal"

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V
    :try_end_127
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_127} :catch_128

    goto :goto_13d

    :catch_128
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detect failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :goto_13d
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;
    .registers 16

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive an intent from server, action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    const-string v1, "mrt"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_28

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    :cond_28
    const-string v3, "messageId"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v3, -0x1

    const-string v4, "eventMessageType"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v3, "com.xiaomi.mipush.RECEIVE_MESSAGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "mipush_payload"

    const/4 v11, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_269

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v7

    const-string v0, "mipush_notified"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v7, :cond_64

    const-string v0, "receiving an empty message, drop"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/en;->a(Landroid/content/Context;)Lcom/xiaomi/push/en;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "12"

    invoke-virtual {v0, v1, p1, v2}, Lcom/xiaomi/push/en;->a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    return-object v11

    :cond_64
    new-instance v0, Lcom/xiaomi/push/ir;

    invoke-direct {v0}, Lcom/xiaomi/push/ir;-><init>()V

    :try_start_69
    invoke-static {v0, v7}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;[B)V

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/ii;

    move-result-object v4

    invoke-virtual {v0}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/hv;

    move-result-object v10

    sget-object v12, Lcom/xiaomi/push/hv;->e:Lcom/xiaomi/push/hv;

    if-ne v10, v12, :cond_c3

    if-eqz v4, :cond_c3

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/b;->e()Z

    move-result v10

    if-nez v10, :cond_c3

    if-nez v6, :cond_c3

    invoke-virtual {v4, v1, v2}, Lcom/xiaomi/push/ii;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mat"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/xiaomi/push/ii;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/am;->a(Lcom/xiaomi/push/ir;)Z

    move-result v1

    if-nez v1, :cond_a2

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/am;->b(Lcom/xiaomi/push/ir;)V

    goto :goto_c3

    :cond_a2
    const-string v1, "this is a mina\'s message, ack later"

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    const-string v1, "__hybrid_message_ts"

    invoke-virtual {v4}, Lcom/xiaomi/push/ii;->a()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/xiaomi/push/ii;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "__hybrid_device_status"

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/xiaomi/push/jf;->a(Landroid/content/Context;Lcom/xiaomi/push/ir;)S

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/xiaomi/push/ii;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c3
    :goto_c3
    invoke-virtual {v0}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/hv;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/push/hv;->e:Lcom/xiaomi/push/hv;
    :try_end_c9
    .catch Lcom/xiaomi/push/jl; {:try_start_69 .. :try_end_c9} :catch_252
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_c9} :catch_242

    const-string v10, ""

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ne v1, v2, :cond_14c

    :try_start_cf
    invoke-virtual {v0}, Lcom/xiaomi/push/ir;->b()Z

    move-result v1

    if-nez v1, :cond_14c

    invoke-static {v0}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ir;)Z

    move-result v1

    if-eqz v1, :cond_112

    const-string v1, "drop an un-encrypted wake-up messages. %1$s, %2$s"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xiaomi/push/ir;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    if-eqz v4, :cond_eb

    invoke-virtual {v4}, Lcom/xiaomi/push/ii;->a()Ljava/lang/String;

    move-result-object v10

    :cond_eb
    aput-object v10, v2, v13

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/en;->a(Landroid/content/Context;)Lcom/xiaomi/push/en;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "13: %1$s"

    new-array v4, v13, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xiaomi/push/ir;->b()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_10e
    invoke-virtual {v1, v2, p1, v3}, Lcom/xiaomi/push/en;->a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_146

    :cond_112
    const-string v1, "drop an un-encrypted messages. %1$s, %2$s"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xiaomi/push/ir;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    if-eqz v4, :cond_122

    invoke-virtual {v4}, Lcom/xiaomi/push/ii;->a()Ljava/lang/String;

    move-result-object v10

    :cond_122
    aput-object v10, v2, v13

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/en;->a(Landroid/content/Context;)Lcom/xiaomi/push/en;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "14: %1$s"

    new-array v4, v13, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xiaomi/push/ir;->b()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_10e

    :goto_146
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v1, v0, v6}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;Lcom/xiaomi/push/ir;Z)V

    return-object v11

    :cond_14c
    invoke-virtual {v0}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/hv;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/push/hv;->e:Lcom/xiaomi/push/hv;

    if-ne v1, v2, :cond_1b3

    invoke-virtual {v0}, Lcom/xiaomi/push/ir;->b()Z

    move-result v1

    if-eqz v1, :cond_1b3

    invoke-static {v0}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ir;)Z

    move-result v1

    if-eqz v1, :cond_1b3

    if-eqz v6, :cond_177

    if-eqz v4, :cond_177

    invoke-virtual {v4}, Lcom/xiaomi/push/ii;->a()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_177

    invoke-virtual {v4}, Lcom/xiaomi/push/ii;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "notify_effect"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_177

    goto :goto_1b3

    :cond_177
    const-string v1, "drop a wake-up messages which not has \'notify_effect\' attr. %1$s, %2$s"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xiaomi/push/ir;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    if-eqz v4, :cond_187

    invoke-virtual {v4}, Lcom/xiaomi/push/ii;->a()Ljava/lang/String;

    move-result-object v10

    :cond_187
    aput-object v10, v2, v13

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/en;->a(Landroid/content/Context;)Lcom/xiaomi/push/en;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "25: %1$s"

    new-array v4, v13, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xiaomi/push/ir;->b()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Lcom/xiaomi/push/en;->a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v1, v0, v6}, Lcom/xiaomi/mipush/sdk/s;->b(Landroid/content/Context;Lcom/xiaomi/push/ir;Z)V

    return-object v11

    :cond_1b3
    :goto_1b3
    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/b;->c()Z

    move-result v1

    if-nez v1, :cond_202

    iget-object v1, v0, Lcom/xiaomi/push/ir;->a:Lcom/xiaomi/push/hv;

    sget-object v2, Lcom/xiaomi/push/hv;->a:Lcom/xiaomi/push/hv;

    if-eq v1, v2, :cond_202

    invoke-static {v0}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ir;)Z

    move-result v1

    if-eqz v1, :cond_1cd

    move-object v4, p0

    move-object v5, v0

    move-object v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/xiaomi/mipush/sdk/am;->a(Lcom/xiaomi/push/ir;Z[BLjava/lang/String;ILandroid/content/Intent;)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;

    move-result-object p1

    return-object p1

    :cond_1cd
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v1, v0, v6}, Lcom/xiaomi/mipush/sdk/s;->e(Landroid/content/Context;Lcom/xiaomi/push/ir;Z)V

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/b;->d()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive message without registration. need re-register!registered?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/en;->a(Landroid/content/Context;)Lcom/xiaomi/push/en;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "15"

    invoke-virtual {v1, v2, p1, v3}, Lcom/xiaomi/push/en;->a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    if-eqz v0, :cond_327

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/am;->a()V

    goto/16 :goto_327

    :cond_202
    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/b;->c()Z

    move-result v1

    if-eqz v1, :cond_23a

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/b;->f()Z

    move-result v1

    if-eqz v1, :cond_23a

    iget-object v1, v0, Lcom/xiaomi/push/ir;->a:Lcom/xiaomi/push/hv;

    sget-object v2, Lcom/xiaomi/push/hv;->b:Lcom/xiaomi/push/hv;

    if-ne v1, v2, :cond_22e

    invoke-virtual {v0}, Lcom/xiaomi/push/ir;->b()Z

    move-result v0

    if-eqz v0, :cond_227

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/b;->a()V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->clearExtras(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a()V

    goto/16 :goto_327

    :cond_227
    const-string v0, "receiving an un-encrypt unregistration message"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    goto/16 :goto_327

    :cond_22e
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v1, v0, v6}, Lcom/xiaomi/mipush/sdk/s;->e(Landroid/content/Context;Lcom/xiaomi/push/ir;Z)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->unregisterPush(Landroid/content/Context;)V

    goto/16 :goto_327

    :cond_23a
    move-object v4, p0

    move-object v5, v0

    move-object v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/xiaomi/mipush/sdk/am;->a(Lcom/xiaomi/push/ir;Z[BLjava/lang/String;ILandroid/content/Intent;)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;

    move-result-object p1
    :try_end_241
    .catch Lcom/xiaomi/push/jl; {:try_start_cf .. :try_end_241} :catch_252
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_241} :catch_242

    return-object p1

    :catch_242
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/en;->a(Landroid/content/Context;)Lcom/xiaomi/push/en;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "17"

    goto :goto_261

    :catch_252
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/en;->a(Landroid/content/Context;)Lcom/xiaomi/push/en;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "16"

    :goto_261
    invoke-virtual {v1, v2, p1, v3}, Lcom/xiaomi/push/en;->a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_327

    :cond_269
    const-string v1, "com.xiaomi.mipush.ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c7

    new-instance v0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;-><init>()V

    new-instance v1, Lcom/xiaomi/push/ir;

    invoke-direct {v1}, Lcom/xiaomi/push/ir;-><init>()V

    :try_start_27b
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_284

    invoke-static {v1, v2}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;[B)V
    :try_end_284
    .catch Lcom/xiaomi/push/jl; {:try_start_27b .. :try_end_284} :catch_284

    :catch_284
    :cond_284
    invoke-virtual {v1}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/hv;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->setCommand(Ljava/lang/String;)V

    const-string v1, "mipush_error_code"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->setResultCode(J)V

    const-string v2, "mipush_error_msg"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->setReason(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive a error message. code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg= "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    return-object v0

    :cond_2c7
    const-string v1, "com.xiaomi.mipush.MESSAGE_ARRIVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_327

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_2db

    const-string p1, "message arrived: receiving an empty message, drop"

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    return-object v11

    :cond_2db
    new-instance v0, Lcom/xiaomi/push/ir;

    invoke-direct {v0}, Lcom/xiaomi/push/ir;-><init>()V

    :try_start_2e0
    invoke-static {v0, p1}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;[B)V

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/am;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object v1

    invoke-static {v0}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ir;)Z

    move-result v2

    if-eqz v2, :cond_2f5

    const-string p1, "message arrived: receive ignore reg message, ignore!"

    :goto_2f1
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    goto :goto_327

    :cond_2f5
    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/b;->c()Z

    move-result v2

    if-nez v2, :cond_2fe

    const-string p1, "message arrived: receive message without registration. need unregister or re-register!"

    goto :goto_2f1

    :cond_2fe
    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/b;->c()Z

    move-result v2

    if-eqz v2, :cond_30d

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/b;->f()Z

    move-result v1

    if-eqz v1, :cond_30d

    const-string p1, "message arrived: app info is invalidated"

    goto :goto_2f1

    :cond_30d
    invoke-direct {p0, v0, p1}, Lcom/xiaomi/mipush/sdk/am;->a(Lcom/xiaomi/push/ir;[B)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;

    move-result-object p1
    :try_end_311
    .catch Ljava/lang/Exception; {:try_start_2e0 .. :try_end_311} :catch_312

    return-object p1

    :catch_312
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to deal with arrived message. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    :cond_327
    :goto_327
    return-object v11
.end method

.method public a(Ljava/util/TimeZone;Ljava/util/TimeZone;Ljava/util/List;)Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TimeZone;",
            "Ljava/util/TimeZone;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p3

    invoke-virtual/range {p1 .. p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v0

    :cond_9
    const-wide/16 v1, 0x5a0

    invoke-virtual/range {p1 .. p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit16 v3, v3, 0x3e8

    div-int/lit8 v3, v3, 0x3c

    int-to-long v3, v3

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x1

    aget-object v6, v6, v10

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v10

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v15, 0x3c

    mul-long/2addr v8, v15

    add-long/2addr v8, v11

    sub-long/2addr v8, v3

    add-long/2addr v8, v1

    rem-long/2addr v8, v1

    mul-long/2addr v13, v15

    add-long/2addr v13, v6

    sub-long/2addr v13, v3

    add-long/2addr v13, v1

    rem-long/2addr v13, v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    div-long v3, v8, v15

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    rem-long/2addr v8, v15

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v10

    const-string v3, "%1$02d:%2$02d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v1, v1, [Ljava/lang/Object;

    div-long v6, v13, v15

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    rem-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
