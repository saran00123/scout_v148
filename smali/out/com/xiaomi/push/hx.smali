.class public final enum Lcom/xiaomi/push/hx;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/push/hx;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/push/hx;

.field private static final synthetic a:[Lcom/xiaomi/push/hx;

.field public static final enum b:Lcom/xiaomi/push/hx;

.field public static final enum c:Lcom/xiaomi/push/hx;

.field public static final enum d:Lcom/xiaomi/push/hx;

.field public static final enum e:Lcom/xiaomi/push/hx;

.field public static final enum f:Lcom/xiaomi/push/hx;

.field public static final enum g:Lcom/xiaomi/push/hx;

.field public static final enum h:Lcom/xiaomi/push/hx;

.field public static final enum i:Lcom/xiaomi/push/hx;

.field public static final enum j:Lcom/xiaomi/push/hx;

.field public static final enum k:Lcom/xiaomi/push/hx;

.field public static final enum l:Lcom/xiaomi/push/hx;

.field public static final enum m:Lcom/xiaomi/push/hx;

.field public static final enum n:Lcom/xiaomi/push/hx;

.field public static final enum o:Lcom/xiaomi/push/hx;

.field public static final enum p:Lcom/xiaomi/push/hx;

.field public static final enum q:Lcom/xiaomi/push/hx;

.field public static final enum r:Lcom/xiaomi/push/hx;

.field public static final enum s:Lcom/xiaomi/push/hx;

.field public static final enum t:Lcom/xiaomi/push/hx;

.field public static final enum u:Lcom/xiaomi/push/hx;

.field public static final enum v:Lcom/xiaomi/push/hx;

.field public static final enum w:Lcom/xiaomi/push/hx;

.field public static final enum x:Lcom/xiaomi/push/hx;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/xiaomi/push/hx;

    const/4 v1, 0x1

    const-string v2, "DeviceInfo"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/xiaomi/push/hx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hx;->a:Lcom/xiaomi/push/hx;

    new-instance v0, Lcom/xiaomi/push/hx;

    const/4 v2, 0x2

    const-string v3, "AppInstallList"

    invoke-direct {v0, v3, v1, v2}, Lcom/xiaomi/push/hx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hx;->b:Lcom/xiaomi/push/hx;

    new-instance v0, Lcom/xiaomi/push/hx;

    const/4 v1, 0x3

    const-string v3, "AppActiveList"

    invoke-direct {v0, v3, v2, v1}, Lcom/xiaomi/push/hx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hx;->c:Lcom/xiaomi/push/hx;

    new-instance v0, Lcom/xiaomi/push/hx;

    const/4 v2, 0x4

    const-string v3, "Bluetooth"

    invoke-direct {v0, v3, v1, v2}, Lcom/xiaomi/push/hx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hx;->d:Lcom/xiaomi/push/hx;

    new-instance v0, Lcom/xiaomi/push/hx;

    const/4 v1, 0x5

    const-string v3, "Location"

    invoke-direct {v0, v3, v2, v1}, Lcom/xiaomi/push/hx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hx;->e:Lcom/xiaomi/push/hx;

    new-instance v0, Lcom/xiaomi/push/hx;

    const/4 v2, 0x6

    const-string v3, "Account"

    invoke-direct {v0, v3, v1, v2}, Lcom/xiaomi/push/hx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hx;->f:Lcom/xiaomi/push/hx;

    new-instance v0, Lcom/xiaomi/push/hx;

    const/4 v1, 0x7

    const-string v3, "WIFI"

    invoke-direct {v0, v3, v2, v1}, Lcom/xiaomi/push/hx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hx;->g:Lcom/xiaomi/push/hx;

    new-instance v0, Lcom/xiaomi/push/hx;

    const/16 v2, 0x8

    const-string v3, "Cellular"

    invoke-direct {v0, v3, v1, v2}, Lcom/xiaomi/push/hx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hx;->h:Lcom/xiaomi/push/hx;

    new-instance v0, Lcom/xiaomi/push/hx;

    const/16 v1, 0x9

    const-string v3, "TopApp"

    invoke-direct {v0, v3, v2, v1}, Lcom/xiaomi/push/hx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hx;->i:Lcom/xiaomi/push/hx;

    new-instance v0, Lcom/xiaomi/push/hx;

    const/16 v2, 0xa

    const-string v3, "BroadcastAction"

    invoke-direct {v0, v3, v1, v2}, Lcom/xiaomi/push/hx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hx;->j:Lcom/xiaomi/push/hx;

    new-instance v0, Lcom/xiaomi/push/hx;

    const/16 v1, 0xb

    const-string v3, "BroadcastActionAdded"

    invoke-direct {v0, v3, v2, v1}, Lcom/xiaomi/push/hx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hx;->k:Lcom/xiaomi/push/hx;

    new-instance v0, Lcom/xiaomi/push/hx;

    const/16 v2, 0xc

    const-string v3, "BroadcastActionRemoved"

    invoke-direct {v0, v3, v1, v2}, Lcom/xiaomi/push/hx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hx;->l:Lcom/xiaomi/push/hx;

    new-instance v0, Lcom/xiaomi/push/hx;

    const/16 v1, 0xd

    const-string v3, "BroadcastActionReplaced"

    invoke-direct {v0, v3, v2, v1}, Lcom/xiaomi/push/hx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hx;->m:Lcom/xiaomi/push/hx;

    new-instance v0, Lcom/xiaomi/push/hx;

    const/16 v2, 0xe

    const-string v3, "BroadcastActionDataCleared"

    invoke-direct {v0, v3, v1, v2}, Lcom/xiaomi/push/hx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hx;->n:Lcom/xiaomi/push/hx;

    new-instance v0, Lcom/xiaomi/push/hx;

    const/16 v1, 0xf

    const-string v3, "BroadcastActionRestarted"

    invoke-direct {v0, v3, v2, v1}, Lcom/xiaomi/push/hx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hx;->o:Lcom/xiaomi/push/hx;

    new-instance v0, Lcom/xiaomi/push/hx;

    const-string v2, "BroadcastActionChanged"

    const/16 v3, 0x10

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaomi/push/hx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hx;->p:Lcom/xiaomi/push/hx;

    new-instance v0, Lcom/xiaomi/push/hx;

    const-string v1, "AppPermission"

    const/16 v2, 0x10

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/hx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hx;->q:Lcom/xiaomi/push/hx;

    new-instance v0, Lcom/xiaomi/push/hx;

    const-string v1, "WifiDevicesMac"

    const/16 v2, 0x11

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/hx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hx;->r:Lcom/xiaomi/push/hx;

    new-instance v0, Lcom/xiaomi/push/hx;

    const-string v1, "ActivityActiveTimeStamp"

    const/16 v2, 0x12

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/hx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hx;->s:Lcom/xiaomi/push/hx;

    new-instance v0, Lcom/xiaomi/push/hx;

    const-string v1, "DeviceBaseInfo"

    const/16 v2, 0x13

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/hx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hx;->t:Lcom/xiaomi/push/hx;

    new-instance v0, Lcom/xiaomi/push/hx;

    const-string v1, "DeviceInfoV2"

    const/16 v2, 0x14

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/hx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hx;->u:Lcom/xiaomi/push/hx;

    new-instance v0, Lcom/xiaomi/push/hx;

    const-string v1, "Battery"

    const/16 v2, 0x15

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/hx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hx;->v:Lcom/xiaomi/push/hx;

    new-instance v0, Lcom/xiaomi/push/hx;

    const-string v1, "Storage"

    const/16 v2, 0x16

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/hx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hx;->w:Lcom/xiaomi/push/hx;

    new-instance v0, Lcom/xiaomi/push/hx;

    const-string v1, "AppIsInstalled"

    const/16 v2, 0x17

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/hx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hx;->x:Lcom/xiaomi/push/hx;

    invoke-static {}, Lcom/xiaomi/push/hx;->a()[Lcom/xiaomi/push/hx;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/hx;->a:[Lcom/xiaomi/push/hx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/push/hx;->a:I

    return-void
.end method

.method public static a(I)Lcom/xiaomi/push/hx;
    .registers 1

    packed-switch p0, :pswitch_data_4e

    const/4 p0, 0x0

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/xiaomi/push/hx;->x:Lcom/xiaomi/push/hx;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/xiaomi/push/hx;->w:Lcom/xiaomi/push/hx;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/xiaomi/push/hx;->v:Lcom/xiaomi/push/hx;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/xiaomi/push/hx;->u:Lcom/xiaomi/push/hx;

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/xiaomi/push/hx;->t:Lcom/xiaomi/push/hx;

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/xiaomi/push/hx;->s:Lcom/xiaomi/push/hx;

    return-object p0

    :pswitch_17
    sget-object p0, Lcom/xiaomi/push/hx;->r:Lcom/xiaomi/push/hx;

    return-object p0

    :pswitch_1a
    sget-object p0, Lcom/xiaomi/push/hx;->q:Lcom/xiaomi/push/hx;

    return-object p0

    :pswitch_1d
    sget-object p0, Lcom/xiaomi/push/hx;->p:Lcom/xiaomi/push/hx;

    return-object p0

    :pswitch_20
    sget-object p0, Lcom/xiaomi/push/hx;->o:Lcom/xiaomi/push/hx;

    return-object p0

    :pswitch_23
    sget-object p0, Lcom/xiaomi/push/hx;->n:Lcom/xiaomi/push/hx;

    return-object p0

    :pswitch_26
    sget-object p0, Lcom/xiaomi/push/hx;->m:Lcom/xiaomi/push/hx;

    return-object p0

    :pswitch_29
    sget-object p0, Lcom/xiaomi/push/hx;->l:Lcom/xiaomi/push/hx;

    return-object p0

    :pswitch_2c
    sget-object p0, Lcom/xiaomi/push/hx;->k:Lcom/xiaomi/push/hx;

    return-object p0

    :pswitch_2f
    sget-object p0, Lcom/xiaomi/push/hx;->j:Lcom/xiaomi/push/hx;

    return-object p0

    :pswitch_32
    sget-object p0, Lcom/xiaomi/push/hx;->i:Lcom/xiaomi/push/hx;

    return-object p0

    :pswitch_35
    sget-object p0, Lcom/xiaomi/push/hx;->h:Lcom/xiaomi/push/hx;

    return-object p0

    :pswitch_38
    sget-object p0, Lcom/xiaomi/push/hx;->g:Lcom/xiaomi/push/hx;

    return-object p0

    :pswitch_3b
    sget-object p0, Lcom/xiaomi/push/hx;->f:Lcom/xiaomi/push/hx;

    return-object p0

    :pswitch_3e
    sget-object p0, Lcom/xiaomi/push/hx;->e:Lcom/xiaomi/push/hx;

    return-object p0

    :pswitch_41
    sget-object p0, Lcom/xiaomi/push/hx;->d:Lcom/xiaomi/push/hx;

    return-object p0

    :pswitch_44
    sget-object p0, Lcom/xiaomi/push/hx;->c:Lcom/xiaomi/push/hx;

    return-object p0

    :pswitch_47
    sget-object p0, Lcom/xiaomi/push/hx;->b:Lcom/xiaomi/push/hx;

    return-object p0

    :pswitch_4a
    sget-object p0, Lcom/xiaomi/push/hx;->a:Lcom/xiaomi/push/hx;

    return-object p0

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private static synthetic a()[Lcom/xiaomi/push/hx;
    .registers 3

    const/16 v0, 0x18

    new-array v0, v0, [Lcom/xiaomi/push/hx;

    sget-object v1, Lcom/xiaomi/push/hx;->a:Lcom/xiaomi/push/hx;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hx;->b:Lcom/xiaomi/push/hx;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hx;->c:Lcom/xiaomi/push/hx;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hx;->d:Lcom/xiaomi/push/hx;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hx;->e:Lcom/xiaomi/push/hx;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hx;->f:Lcom/xiaomi/push/hx;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hx;->g:Lcom/xiaomi/push/hx;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hx;->h:Lcom/xiaomi/push/hx;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hx;->i:Lcom/xiaomi/push/hx;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hx;->j:Lcom/xiaomi/push/hx;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hx;->k:Lcom/xiaomi/push/hx;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hx;->l:Lcom/xiaomi/push/hx;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hx;->m:Lcom/xiaomi/push/hx;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hx;->n:Lcom/xiaomi/push/hx;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hx;->o:Lcom/xiaomi/push/hx;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hx;->p:Lcom/xiaomi/push/hx;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hx;->q:Lcom/xiaomi/push/hx;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hx;->r:Lcom/xiaomi/push/hx;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hx;->s:Lcom/xiaomi/push/hx;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hx;->t:Lcom/xiaomi/push/hx;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hx;->u:Lcom/xiaomi/push/hx;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hx;->v:Lcom/xiaomi/push/hx;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hx;->w:Lcom/xiaomi/push/hx;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hx;->x:Lcom/xiaomi/push/hx;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/push/hx;
    .registers 2

    const-class v0, Lcom/xiaomi/push/hx;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/push/hx;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/push/hx;
    .registers 1

    sget-object v0, Lcom/xiaomi/push/hx;->a:[Lcom/xiaomi/push/hx;

    invoke-virtual {v0}, [Lcom/xiaomi/push/hx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/push/hx;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/hx;->a:I

    return v0
.end method
