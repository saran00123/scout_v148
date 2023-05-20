.class public final enum Lcom/xiaomi/push/fm;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/push/fm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/xiaomi/push/fm;

.field public static final enum B:Lcom/xiaomi/push/fm;

.field public static final enum C:Lcom/xiaomi/push/fm;

.field public static final enum D:Lcom/xiaomi/push/fm;

.field public static final enum E:Lcom/xiaomi/push/fm;

.field public static final enum F:Lcom/xiaomi/push/fm;

.field public static final enum G:Lcom/xiaomi/push/fm;

.field public static final enum H:Lcom/xiaomi/push/fm;

.field public static final enum I:Lcom/xiaomi/push/fm;

.field public static final enum J:Lcom/xiaomi/push/fm;

.field public static final enum K:Lcom/xiaomi/push/fm;

.field public static final enum L:Lcom/xiaomi/push/fm;

.field public static final enum M:Lcom/xiaomi/push/fm;

.field public static final enum N:Lcom/xiaomi/push/fm;

.field public static final enum O:Lcom/xiaomi/push/fm;

.field public static final enum P:Lcom/xiaomi/push/fm;

.field public static final enum Q:Lcom/xiaomi/push/fm;

.field public static final enum R:Lcom/xiaomi/push/fm;

.field public static final enum S:Lcom/xiaomi/push/fm;

.field public static final enum T:Lcom/xiaomi/push/fm;

.field public static final enum U:Lcom/xiaomi/push/fm;

.field public static final enum V:Lcom/xiaomi/push/fm;

.field public static final enum W:Lcom/xiaomi/push/fm;

.field public static final enum X:Lcom/xiaomi/push/fm;

.field public static final enum Y:Lcom/xiaomi/push/fm;

.field public static final enum Z:Lcom/xiaomi/push/fm;

.field public static final enum a:Lcom/xiaomi/push/fm;

.field private static final synthetic a:[Lcom/xiaomi/push/fm;

.field public static final enum aa:Lcom/xiaomi/push/fm;

.field public static final enum ab:Lcom/xiaomi/push/fm;

.field public static final enum ac:Lcom/xiaomi/push/fm;

.field public static final enum ad:Lcom/xiaomi/push/fm;

.field public static final enum ae:Lcom/xiaomi/push/fm;

.field public static final enum b:Lcom/xiaomi/push/fm;

.field public static final enum c:Lcom/xiaomi/push/fm;

.field public static final enum d:Lcom/xiaomi/push/fm;

.field public static final enum e:Lcom/xiaomi/push/fm;

.field public static final enum f:Lcom/xiaomi/push/fm;

.field public static final enum g:Lcom/xiaomi/push/fm;

.field public static final enum h:Lcom/xiaomi/push/fm;

.field public static final enum i:Lcom/xiaomi/push/fm;

.field public static final enum j:Lcom/xiaomi/push/fm;

.field public static final enum k:Lcom/xiaomi/push/fm;

.field public static final enum l:Lcom/xiaomi/push/fm;

.field public static final enum m:Lcom/xiaomi/push/fm;

.field public static final enum n:Lcom/xiaomi/push/fm;

.field public static final enum o:Lcom/xiaomi/push/fm;

.field public static final enum p:Lcom/xiaomi/push/fm;

.field public static final enum q:Lcom/xiaomi/push/fm;

.field public static final enum r:Lcom/xiaomi/push/fm;

.field public static final enum s:Lcom/xiaomi/push/fm;

.field public static final enum t:Lcom/xiaomi/push/fm;

.field public static final enum u:Lcom/xiaomi/push/fm;

.field public static final enum v:Lcom/xiaomi/push/fm;

.field public static final enum w:Lcom/xiaomi/push/fm;

.field public static final enum x:Lcom/xiaomi/push/fm;

.field public static final enum y:Lcom/xiaomi/push/fm;

.field public static final enum z:Lcom/xiaomi/push/fm;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/xiaomi/push/fm;

    const/4 v1, 0x1

    const-string v2, "TCP_CONN_FAIL"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->a:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const/4 v2, 0x2

    const-string v3, "TCP_CONN_TIME"

    invoke-direct {v0, v3, v1, v2}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->b:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const/4 v1, 0x3

    const-string v3, "PING_RTT"

    invoke-direct {v0, v3, v2, v1}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->c:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const/4 v2, 0x4

    const-string v3, "CHANNEL_CON_FAIL"

    invoke-direct {v0, v3, v1, v2}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->d:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const/4 v1, 0x5

    const-string v3, "CHANNEL_CON_OK"

    invoke-direct {v0, v3, v2, v1}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->e:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const/4 v2, 0x6

    const-string v3, "ICMP_PING_FAIL"

    invoke-direct {v0, v3, v1, v2}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->f:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const/4 v1, 0x7

    const-string v3, "ICMP_PING_OK"

    invoke-direct {v0, v3, v2, v1}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->g:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const/16 v2, 0x8

    const-string v3, "CHANNEL_ONLINE_RATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->h:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "BATCH_TCP_CONN_SUCCESS"

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->i:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "BATCH_TCP_CONN_FAIL"

    const/16 v2, 0x9

    const/16 v3, 0x3e9

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->j:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "CHANNEL_STATS_COUNTER"

    const/16 v2, 0xa

    const/16 v3, 0x1f40

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->k:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "GSLB_REQUEST_SUCCESS"

    const/16 v2, 0xb

    const/16 v3, 0x2710

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->l:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "GSLB_TCP_NOACCESS"

    const/16 v2, 0xc

    const/16 v3, 0x2775

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->m:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "GSLB_TCP_NETUNREACH"

    const/16 v2, 0xd

    const/16 v3, 0x2776

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->n:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "GSLB_TCP_CONNREFUSED"

    const/16 v2, 0xe

    const/16 v3, 0x2777

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->o:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "GSLB_TCP_NOROUTETOHOST"

    const/16 v2, 0xf

    const/16 v3, 0x2778

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->p:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "GSLB_TCP_TIMEOUT"

    const/16 v2, 0x10

    const/16 v3, 0x2779

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->q:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "GSLB_TCP_INVALARG"

    const/16 v2, 0x11

    const/16 v3, 0x277a

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->r:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "GSLB_TCP_UKNOWNHOST"

    const/16 v2, 0x12

    const/16 v3, 0x277b

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->s:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "GSLB_TCP_ERR_OTHER"

    const/16 v2, 0x13

    const/16 v3, 0x27d7

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->t:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "GSLB_ERR"

    const/16 v2, 0x14

    const/16 v3, 0x2af7

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->u:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "CONN_SUCCESS"

    const/16 v2, 0x15

    const/16 v3, 0x4e20

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->v:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "CONN_TCP_NOACCESS"

    const/16 v2, 0x16

    const/16 v3, 0x4e85

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->w:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "CONN_TCP_NETUNREACH"

    const/16 v2, 0x17

    const/16 v3, 0x4e86

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->x:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "CONN_TCP_CONNREFUSED"

    const/16 v2, 0x18

    const/16 v3, 0x4e87

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->y:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "CONN_TCP_NOROUTETOHOST"

    const/16 v2, 0x19

    const/16 v3, 0x4e88

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->z:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "CONN_TCP_TIMEOUT"

    const/16 v2, 0x1a

    const/16 v3, 0x4e89

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->A:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "CONN_TCP_INVALARG"

    const/16 v2, 0x1b

    const/16 v3, 0x4e8a

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->B:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "CONN_TCP_UKNOWNHOST"

    const/16 v2, 0x1c

    const/16 v3, 0x4e8b

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->C:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "CONN_TCP_ERR_OTHER"

    const/16 v2, 0x1d

    const/16 v3, 0x4ee7

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->D:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "CONN_XMPP_ERR"

    const/16 v2, 0x1e

    const/16 v3, 0x4faf

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->E:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "CONN_BOSH_UNKNOWNHOST"

    const/16 v2, 0x1f

    const/16 v3, 0x4fb7

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->F:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "CONN_BOSH_ERR"

    const/16 v2, 0x20

    const/16 v3, 0x5013

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->G:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "BIND_SUCCESS"

    const/16 v2, 0x21

    const/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->H:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "BIND_TCP_READ_TIMEOUT_DEPRECTED"

    const/16 v2, 0x22

    const/16 v3, 0x7595

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->I:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "BIND_TCP_CONNRESET_DEPRECTED"

    const/16 v2, 0x23

    const/16 v3, 0x7596

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->J:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "BIND_TCP_BROKEN_PIPE_DEPRECTED"

    const/16 v2, 0x24

    const/16 v3, 0x7597

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->K:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "BIND_TCP_READ_TIMEOUT"

    const/16 v2, 0x25

    const/16 v3, 0x759c

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->L:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "BIND_TCP_CONNRESET"

    const/16 v2, 0x26

    const/16 v3, 0x759d

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->M:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "BIND_TCP_BROKEN_PIPE"

    const/16 v2, 0x27

    const/16 v3, 0x759e

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->N:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "BIND_TCP_ERR"

    const/16 v2, 0x28

    const/16 v3, 0x75f7

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->O:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "BIND_XMPP_ERR"

    const/16 v2, 0x29

    const/16 v3, 0x76bf

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->P:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "BIND_BOSH_ITEM_NOT_FOUND"

    const/16 v2, 0x2a

    const/16 v3, 0x76c1

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->Q:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "BIND_BOSH_ERR"

    const/16 v2, 0x2b

    const/16 v3, 0x7723

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->R:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "BIND_TIMEOUT"

    const/16 v2, 0x2c

    const/16 v3, 0x7725

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->S:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "BIND_INVALID_SIG"

    const/16 v2, 0x2d

    const/16 v3, 0x7726

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->T:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "CHANNEL_TCP_READTIMEOUT_DEPRECTED"

    const/16 v2, 0x2e

    const v3, 0x9ca5

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->U:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "CHANNEL_TCP_CONNRESET_DEPRECTED"

    const/16 v2, 0x2f

    const v3, 0x9ca6

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->V:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "CHANNEL_TCP_BROKEN_PIPE_DEPRECTED"

    const/16 v2, 0x30

    const v3, 0x9ca7

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->W:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "CHANNEL_TCP_READTIMEOUT"

    const/16 v2, 0x31

    const v3, 0x9cac

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->X:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "CHANNEL_TCP_CONNRESET"

    const/16 v2, 0x32

    const v3, 0x9cad

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->Y:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "CHANNEL_TCP_BROKEN_PIPE"

    const/16 v2, 0x33

    const v3, 0x9cae

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->Z:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "CHANNEL_TCP_ERR"

    const/16 v2, 0x34

    const v3, 0x9d07

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->aa:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "CHANNEL_XMPPEXCEPTION"

    const/16 v2, 0x35

    const v3, 0x9dcf

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->ab:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "CHANNEL_BOSH_ITEMNOTFIND"

    const/16 v2, 0x36

    const v3, 0x9dd1

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->ac:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "CHANNEL_BOSH_EXCEPTION"

    const/16 v2, 0x37

    const v3, 0x9e33

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->ad:Lcom/xiaomi/push/fm;

    new-instance v0, Lcom/xiaomi/push/fm;

    const-string v1, "CHANNEL_TIMER_DELAYED"

    const/16 v2, 0x38

    const v3, 0xc351

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/fm;->ae:Lcom/xiaomi/push/fm;

    invoke-static {}, Lcom/xiaomi/push/fm;->a()[Lcom/xiaomi/push/fm;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/fm;->a:[Lcom/xiaomi/push/fm;

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

    iput p3, p0, Lcom/xiaomi/push/fm;->a:I

    return-void
.end method

.method public static a(I)Lcom/xiaomi/push/fm;
    .registers 2

    const/16 v0, 0x7725

    if-eq p0, v0, :cond_c4

    const/16 v0, 0x7726

    if-eq p0, v0, :cond_c1

    packed-switch p0, :pswitch_data_c8

    sparse-switch p0, :sswitch_data_dc

    packed-switch p0, :pswitch_data_12a

    packed-switch p0, :pswitch_data_13c

    packed-switch p0, :pswitch_data_14e

    packed-switch p0, :pswitch_data_158

    packed-switch p0, :pswitch_data_162

    packed-switch p0, :pswitch_data_16c

    const/4 p0, 0x0

    return-object p0

    :pswitch_22
    sget-object p0, Lcom/xiaomi/push/fm;->Z:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_25
    sget-object p0, Lcom/xiaomi/push/fm;->Y:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_28
    sget-object p0, Lcom/xiaomi/push/fm;->X:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_2b
    sget-object p0, Lcom/xiaomi/push/fm;->W:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_2e
    sget-object p0, Lcom/xiaomi/push/fm;->V:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_31
    sget-object p0, Lcom/xiaomi/push/fm;->U:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_34
    sget-object p0, Lcom/xiaomi/push/fm;->N:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_37
    sget-object p0, Lcom/xiaomi/push/fm;->M:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_3a
    sget-object p0, Lcom/xiaomi/push/fm;->L:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_3d
    sget-object p0, Lcom/xiaomi/push/fm;->K:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_40
    sget-object p0, Lcom/xiaomi/push/fm;->J:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_43
    sget-object p0, Lcom/xiaomi/push/fm;->I:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_46
    sget-object p0, Lcom/xiaomi/push/fm;->C:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_49
    sget-object p0, Lcom/xiaomi/push/fm;->B:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_4c
    sget-object p0, Lcom/xiaomi/push/fm;->A:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_4f
    sget-object p0, Lcom/xiaomi/push/fm;->z:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_52
    sget-object p0, Lcom/xiaomi/push/fm;->y:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_55
    sget-object p0, Lcom/xiaomi/push/fm;->x:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_58
    sget-object p0, Lcom/xiaomi/push/fm;->w:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_5b
    sget-object p0, Lcom/xiaomi/push/fm;->s:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_5e
    sget-object p0, Lcom/xiaomi/push/fm;->r:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_61
    sget-object p0, Lcom/xiaomi/push/fm;->q:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_64
    sget-object p0, Lcom/xiaomi/push/fm;->p:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_67
    sget-object p0, Lcom/xiaomi/push/fm;->o:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_6a
    sget-object p0, Lcom/xiaomi/push/fm;->n:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_6d
    sget-object p0, Lcom/xiaomi/push/fm;->m:Lcom/xiaomi/push/fm;

    return-object p0

    :sswitch_70
    sget-object p0, Lcom/xiaomi/push/fm;->ae:Lcom/xiaomi/push/fm;

    return-object p0

    :sswitch_73
    sget-object p0, Lcom/xiaomi/push/fm;->ad:Lcom/xiaomi/push/fm;

    return-object p0

    :sswitch_76
    sget-object p0, Lcom/xiaomi/push/fm;->ac:Lcom/xiaomi/push/fm;

    return-object p0

    :sswitch_79
    sget-object p0, Lcom/xiaomi/push/fm;->ab:Lcom/xiaomi/push/fm;

    return-object p0

    :sswitch_7c
    sget-object p0, Lcom/xiaomi/push/fm;->aa:Lcom/xiaomi/push/fm;

    return-object p0

    :sswitch_7f
    sget-object p0, Lcom/xiaomi/push/fm;->R:Lcom/xiaomi/push/fm;

    return-object p0

    :sswitch_82
    sget-object p0, Lcom/xiaomi/push/fm;->Q:Lcom/xiaomi/push/fm;

    return-object p0

    :sswitch_85
    sget-object p0, Lcom/xiaomi/push/fm;->P:Lcom/xiaomi/push/fm;

    return-object p0

    :sswitch_88
    sget-object p0, Lcom/xiaomi/push/fm;->O:Lcom/xiaomi/push/fm;

    return-object p0

    :sswitch_8b
    sget-object p0, Lcom/xiaomi/push/fm;->H:Lcom/xiaomi/push/fm;

    return-object p0

    :sswitch_8e
    sget-object p0, Lcom/xiaomi/push/fm;->G:Lcom/xiaomi/push/fm;

    return-object p0

    :sswitch_91
    sget-object p0, Lcom/xiaomi/push/fm;->F:Lcom/xiaomi/push/fm;

    return-object p0

    :sswitch_94
    sget-object p0, Lcom/xiaomi/push/fm;->E:Lcom/xiaomi/push/fm;

    return-object p0

    :sswitch_97
    sget-object p0, Lcom/xiaomi/push/fm;->D:Lcom/xiaomi/push/fm;

    return-object p0

    :sswitch_9a
    sget-object p0, Lcom/xiaomi/push/fm;->v:Lcom/xiaomi/push/fm;

    return-object p0

    :sswitch_9d
    sget-object p0, Lcom/xiaomi/push/fm;->u:Lcom/xiaomi/push/fm;

    return-object p0

    :sswitch_a0
    sget-object p0, Lcom/xiaomi/push/fm;->t:Lcom/xiaomi/push/fm;

    return-object p0

    :sswitch_a3
    sget-object p0, Lcom/xiaomi/push/fm;->l:Lcom/xiaomi/push/fm;

    return-object p0

    :sswitch_a6
    sget-object p0, Lcom/xiaomi/push/fm;->k:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_a9
    sget-object p0, Lcom/xiaomi/push/fm;->h:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_ac
    sget-object p0, Lcom/xiaomi/push/fm;->g:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_af
    sget-object p0, Lcom/xiaomi/push/fm;->f:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_b2
    sget-object p0, Lcom/xiaomi/push/fm;->e:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_b5
    sget-object p0, Lcom/xiaomi/push/fm;->d:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_b8
    sget-object p0, Lcom/xiaomi/push/fm;->c:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_bb
    sget-object p0, Lcom/xiaomi/push/fm;->b:Lcom/xiaomi/push/fm;

    return-object p0

    :pswitch_be
    sget-object p0, Lcom/xiaomi/push/fm;->a:Lcom/xiaomi/push/fm;

    return-object p0

    :cond_c1
    sget-object p0, Lcom/xiaomi/push/fm;->T:Lcom/xiaomi/push/fm;

    return-object p0

    :cond_c4
    sget-object p0, Lcom/xiaomi/push/fm;->S:Lcom/xiaomi/push/fm;

    return-object p0

    nop

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_be
        :pswitch_bb
        :pswitch_b8
        :pswitch_b5
        :pswitch_b2
        :pswitch_af
        :pswitch_ac
        :pswitch_a9
    .end packed-switch

    :sswitch_data_dc
    .sparse-switch
        0x1f40 -> :sswitch_a6
        0x2710 -> :sswitch_a3
        0x27d7 -> :sswitch_a0
        0x2af7 -> :sswitch_9d
        0x4e20 -> :sswitch_9a
        0x4ee7 -> :sswitch_97
        0x4faf -> :sswitch_94
        0x4fb7 -> :sswitch_91
        0x5013 -> :sswitch_8e
        0x7530 -> :sswitch_8b
        0x75f7 -> :sswitch_88
        0x76bf -> :sswitch_85
        0x76c1 -> :sswitch_82
        0x7723 -> :sswitch_7f
        0x9d07 -> :sswitch_7c
        0x9dcf -> :sswitch_79
        0x9dd1 -> :sswitch_76
        0x9e33 -> :sswitch_73
        0xc351 -> :sswitch_70
    .end sparse-switch

    :pswitch_data_12a
    .packed-switch 0x2775
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_64
        :pswitch_61
        :pswitch_5e
        :pswitch_5b
    .end packed-switch

    :pswitch_data_13c
    .packed-switch 0x4e85
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
    .end packed-switch

    :pswitch_data_14e
    .packed-switch 0x7595
        :pswitch_43
        :pswitch_40
        :pswitch_3d
    .end packed-switch

    :pswitch_data_158
    .packed-switch 0x759c
        :pswitch_3a
        :pswitch_37
        :pswitch_34
    .end packed-switch

    :pswitch_data_162
    .packed-switch 0x9ca5
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
    .end packed-switch

    :pswitch_data_16c
    .packed-switch 0x9cac
        :pswitch_28
        :pswitch_25
        :pswitch_22
    .end packed-switch
.end method

.method private static synthetic a()[Lcom/xiaomi/push/fm;
    .registers 3

    const/16 v0, 0x39

    new-array v0, v0, [Lcom/xiaomi/push/fm;

    sget-object v1, Lcom/xiaomi/push/fm;->a:Lcom/xiaomi/push/fm;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->b:Lcom/xiaomi/push/fm;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->c:Lcom/xiaomi/push/fm;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->d:Lcom/xiaomi/push/fm;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->e:Lcom/xiaomi/push/fm;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->f:Lcom/xiaomi/push/fm;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->g:Lcom/xiaomi/push/fm;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->h:Lcom/xiaomi/push/fm;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->i:Lcom/xiaomi/push/fm;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->j:Lcom/xiaomi/push/fm;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->k:Lcom/xiaomi/push/fm;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->l:Lcom/xiaomi/push/fm;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->m:Lcom/xiaomi/push/fm;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->n:Lcom/xiaomi/push/fm;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->o:Lcom/xiaomi/push/fm;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->p:Lcom/xiaomi/push/fm;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->q:Lcom/xiaomi/push/fm;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->r:Lcom/xiaomi/push/fm;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->s:Lcom/xiaomi/push/fm;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->t:Lcom/xiaomi/push/fm;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->u:Lcom/xiaomi/push/fm;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->v:Lcom/xiaomi/push/fm;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->w:Lcom/xiaomi/push/fm;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->x:Lcom/xiaomi/push/fm;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->y:Lcom/xiaomi/push/fm;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->z:Lcom/xiaomi/push/fm;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->A:Lcom/xiaomi/push/fm;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->B:Lcom/xiaomi/push/fm;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->C:Lcom/xiaomi/push/fm;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->D:Lcom/xiaomi/push/fm;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->E:Lcom/xiaomi/push/fm;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->F:Lcom/xiaomi/push/fm;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->G:Lcom/xiaomi/push/fm;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->H:Lcom/xiaomi/push/fm;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->I:Lcom/xiaomi/push/fm;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->J:Lcom/xiaomi/push/fm;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->K:Lcom/xiaomi/push/fm;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->L:Lcom/xiaomi/push/fm;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->M:Lcom/xiaomi/push/fm;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->N:Lcom/xiaomi/push/fm;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->O:Lcom/xiaomi/push/fm;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->P:Lcom/xiaomi/push/fm;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->Q:Lcom/xiaomi/push/fm;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->R:Lcom/xiaomi/push/fm;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->S:Lcom/xiaomi/push/fm;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->T:Lcom/xiaomi/push/fm;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->U:Lcom/xiaomi/push/fm;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->V:Lcom/xiaomi/push/fm;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->W:Lcom/xiaomi/push/fm;

    const/16 v2, 0x30

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->X:Lcom/xiaomi/push/fm;

    const/16 v2, 0x31

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->Y:Lcom/xiaomi/push/fm;

    const/16 v2, 0x32

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->Z:Lcom/xiaomi/push/fm;

    const/16 v2, 0x33

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->aa:Lcom/xiaomi/push/fm;

    const/16 v2, 0x34

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->ab:Lcom/xiaomi/push/fm;

    const/16 v2, 0x35

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->ac:Lcom/xiaomi/push/fm;

    const/16 v2, 0x36

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->ad:Lcom/xiaomi/push/fm;

    const/16 v2, 0x37

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fm;->ae:Lcom/xiaomi/push/fm;

    const/16 v2, 0x38

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/push/fm;
    .registers 2

    const-class v0, Lcom/xiaomi/push/fm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/push/fm;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/push/fm;
    .registers 1

    sget-object v0, Lcom/xiaomi/push/fm;->a:[Lcom/xiaomi/push/fm;

    invoke-virtual {v0}, [Lcom/xiaomi/push/fm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/push/fm;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/fm;->a:I

    return v0
.end method
