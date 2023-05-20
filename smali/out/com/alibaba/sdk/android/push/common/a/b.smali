.class public final enum Lcom/alibaba/sdk/android/push/common/a/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/sdk/android/push/common/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/alibaba/sdk/android/push/common/a/b;

.field public static final enum b:Lcom/alibaba/sdk/android/push/common/a/b;

.field public static final enum c:Lcom/alibaba/sdk/android/push/common/a/b;

.field public static final enum d:Lcom/alibaba/sdk/android/push/common/a/b;

.field public static final enum e:Lcom/alibaba/sdk/android/push/common/a/b;

.field public static final enum f:Lcom/alibaba/sdk/android/push/common/a/b;

.field public static final enum g:Lcom/alibaba/sdk/android/push/common/a/b;

.field public static final enum h:Lcom/alibaba/sdk/android/push/common/a/b;

.field public static final enum i:Lcom/alibaba/sdk/android/push/common/a/b;

.field private static final synthetic m:[Lcom/alibaba/sdk/android/push/common/a/b;


# instance fields
.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 13

    new-instance v6, Lcom/alibaba/sdk/android/push/common/a/b;

    const-string v1, "CHANNEL_SERVICE"

    const/4 v2, 0x0

    const-string v3, "com.taobao.accs.ChannelService"

    const-string v4, "service"

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/push/common/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v6, Lcom/alibaba/sdk/android/push/common/a/b;->a:Lcom/alibaba/sdk/android/push/common/a/b;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/a/b;

    const-string v8, "KERNEL_SERVICE"

    const/4 v9, 0x1

    const-string v10, "com.taobao.accs.ChannelService$KernelService"

    const-string v11, "service"

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/alibaba/sdk/android/push/common/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/b;->b:Lcom/alibaba/sdk/android/push/common/a/b;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/a/b;

    const-string v2, "ACCS_JOB_SERVICE"

    const/4 v3, 0x2

    const-string v4, "com.taobao.accs.internal.AccsJobService"

    const-string v5, "service"

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/push/common/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/b;->c:Lcom/alibaba/sdk/android/push/common/a/b;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/a/b;

    const-string v8, "MSG_DISTRIBUTE_SERVICE"

    const/4 v9, 0x3

    const-string v10, "com.taobao.accs.data.MsgDistributeService"

    const-string v11, "service"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/alibaba/sdk/android/push/common/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/b;->d:Lcom/alibaba/sdk/android/push/common/a/b;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/a/b;

    const-string v2, "EVENT_RECEIVER"

    const/4 v3, 0x4

    const-string v4, "com.taobao.accs.EventReceiver"

    const-string v5, "receiver"

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/push/common/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/b;->e:Lcom/alibaba/sdk/android/push/common/a/b;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/a/b;

    const-string v8, "SERVICE_RECEIVER"

    const/4 v9, 0x5

    const-string v10, "com.taobao.accs.ServiceReceiver"

    const-string v11, "receiver"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/alibaba/sdk/android/push/common/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/b;->f:Lcom/alibaba/sdk/android/push/common/a/b;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/a/b;

    const-string v2, "AGOO_SERVICE"

    const/4 v3, 0x6

    const-string v4, "org.android.agoo.accs.AgooService"

    const-string v5, "service"

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/push/common/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/b;->g:Lcom/alibaba/sdk/android/push/common/a/b;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/a/b;

    const-string v8, "ALIYUN_PUSH_INTENT_SERVICE"

    const/4 v9, 0x7

    const-string v10, "com.aliyun.ams.emas.push.AgooInnerService"

    const-string v11, "service"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/alibaba/sdk/android/push/common/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/b;->h:Lcom/alibaba/sdk/android/push/common/a/b;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/a/b;

    const-string v2, "MSG_SERVICE"

    const/16 v3, 0x8

    const-string v4, "com.aliyun.ams.emas.push.MsgService"

    const-string v5, "service"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/push/common/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/b;->i:Lcom/alibaba/sdk/android/push/common/a/b;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/alibaba/sdk/android/push/common/a/b;

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/b;->a:Lcom/alibaba/sdk/android/push/common/a/b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/b;->b:Lcom/alibaba/sdk/android/push/common/a/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/b;->c:Lcom/alibaba/sdk/android/push/common/a/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/b;->d:Lcom/alibaba/sdk/android/push/common/a/b;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/b;->e:Lcom/alibaba/sdk/android/push/common/a/b;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/b;->f:Lcom/alibaba/sdk/android/push/common/a/b;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/b;->g:Lcom/alibaba/sdk/android/push/common/a/b;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/b;->h:Lcom/alibaba/sdk/android/push/common/a/b;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/b;->i:Lcom/alibaba/sdk/android/push/common/a/b;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/b;->m:[Lcom/alibaba/sdk/android/push/common/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/alibaba/sdk/android/push/common/a/b;->j:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/sdk/android/push/common/a/b;->k:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/alibaba/sdk/android/push/common/a/b;->l:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sdk/android/push/common/a/b;
    .registers 2

    const-class v0, Lcom/alibaba/sdk/android/push/common/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/push/common/a/b;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/sdk/android/push/common/a/b;
    .registers 1

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/b;->m:[Lcom/alibaba/sdk/android/push/common/a/b;

    invoke-virtual {v0}, [Lcom/alibaba/sdk/android/push/common/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/push/common/a/b;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/common/a/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/common/a/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/common/a/b;->l:Z

    return v0
.end method
