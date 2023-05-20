.class public final enum Lcom/alibaba/sdk/android/push/common/a/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/sdk/android/push/common/a/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/alibaba/sdk/android/push/common/a/a;

.field public static final enum b:Lcom/alibaba/sdk/android/push/common/a/a;

.field public static final enum c:Lcom/alibaba/sdk/android/push/common/a/a;

.field public static final enum d:Lcom/alibaba/sdk/android/push/common/a/a;

.field public static final enum e:Lcom/alibaba/sdk/android/push/common/a/a;

.field public static final enum f:Lcom/alibaba/sdk/android/push/common/a/a;

.field public static final enum g:Lcom/alibaba/sdk/android/push/common/a/a;

.field public static final enum h:Lcom/alibaba/sdk/android/push/common/a/a;

.field public static final enum i:Lcom/alibaba/sdk/android/push/common/a/a;

.field public static final enum j:Lcom/alibaba/sdk/android/push/common/a/a;

.field public static final enum k:Lcom/alibaba/sdk/android/push/common/a/a;

.field public static final enum l:Lcom/alibaba/sdk/android/push/common/a/a;

.field public static final enum m:Lcom/alibaba/sdk/android/push/common/a/a;

.field private static final synthetic q:[Lcom/alibaba/sdk/android/push/common/a/a;


# instance fields
.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .registers 13

    new-instance v6, Lcom/alibaba/sdk/android/push/common/a/a;

    const-string v1, "REG_SUCCESS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "00000"

    const-string/jumbo v5, "\u6210\u529f"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/push/common/a/a;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/alibaba/sdk/android/push/common/a/a;->a:Lcom/alibaba/sdk/android/push/common/a/a;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/a/a;

    const-string v8, "ACCS_NO_NETWORK"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v11, "10201"

    const-string/jumbo v12, "\u7f51\u7edc\u4e0d\u53ef\u7528"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/alibaba/sdk/android/push/common/a/a;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/a;->b:Lcom/alibaba/sdk/android/push/common/a/a;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/a/a;

    const-string v2, "ACCS_APPKEY_NULL"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "10202"

    const-string/jumbo v6, "\u65e0\u6548appkey"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/push/common/a/a;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/a;->c:Lcom/alibaba/sdk/android/push/common/a/a;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/a/a;

    const-string v8, "ACCS_APPSECRET_NULL"

    const/4 v9, 0x3

    const-string v11, "10203"

    const-string/jumbo v12, "\u65e0\u6548appSecret"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/alibaba/sdk/android/push/common/a/a;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/a;->d:Lcom/alibaba/sdk/android/push/common/a/a;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/a/a;

    const-string v2, "ACCS_APPRECEIVER_NULL"

    const/4 v3, 0x4

    const-string v5, "10204"

    const-string/jumbo v6, "\u56de\u8c03\u51fd\u6570\u4e3a\u7a7a"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/push/common/a/a;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/a;->e:Lcom/alibaba/sdk/android/push/common/a/a;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/a/a;

    const-string v8, "ACCS_REG_TIME_OUT"

    const/4 v9, 0x5

    const-string v11, "10205"

    const-string/jumbo v12, "\u8bf7\u6c42\u8d85\u65f6,\u8bf7\u67e5\u770btag\u4e3aawcn\u7684error\u7ea7\u522b\u65e5\u5fd7"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/alibaba/sdk/android/push/common/a/a;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/a;->f:Lcom/alibaba/sdk/android/push/common/a/a;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/a/a;

    const-string v2, "ACCS_CONN_INVALID"

    const/4 v3, 0x6

    const-string v5, "10206"

    const-string/jumbo v6, "\u5f53\u524d\u8fde\u63a5\u5f02\u5e38"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/push/common/a/a;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/a;->g:Lcom/alibaba/sdk/android/push/common/a/a;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/a/a;

    const-string v8, "ACCS_NO_CONNECTION"

    const/4 v9, 0x7

    const-string v11, "10207"

    const-string/jumbo v12, "\u65e0\u7f51\u7edc\u8fde\u63a5,\u8bf7\u67e5\u770btag\u4e3aawcn\u7684error\u7ea7\u522b\u65e5\u5fd7"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/alibaba/sdk/android/push/common/a/a;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/a;->h:Lcom/alibaba/sdk/android/push/common/a/a;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/a/a;

    const-string v2, "ACCS_UNKNOWN_ERROR"

    const/16 v3, 0x8

    const-string v5, "10208"

    const-string/jumbo v6, "\u6ce8\u518c/\u9274\u6743\u5931\u8d25(\u8bf7\u68c0\u67e5AppSecret\u7b49\u914d\u7f6e)"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/push/common/a/a;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/a;->i:Lcom/alibaba/sdk/android/push/common/a/a;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/a/a;

    const-string v8, "ACCS_TAIR_ERROR"

    const/16 v9, 0x9

    const-string v11, "10209"

    const-string/jumbo v12, "\u670d\u52a1\u5668\u9519\u8bef"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/alibaba/sdk/android/push/common/a/a;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/a;->j:Lcom/alibaba/sdk/android/push/common/a/a;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/a/a;

    const-string v2, "ACCS_INVALID_DEVICEID"

    const/16 v3, 0xa

    const-string v5, "10210"

    const-string/jumbo v6, "\u65e0\u6548deviceid"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/push/common/a/a;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/a;->k:Lcom/alibaba/sdk/android/push/common/a/a;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/a/a;

    const-string v8, "ACCS_INVALID_PACKAGE"

    const/16 v9, 0xb

    const-string v11, "10211"

    const-string/jumbo v12, "\u5305\u540d\u4e0e\u914d\u7f6e\u4e0d\u7b26"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/alibaba/sdk/android/push/common/a/a;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/a;->l:Lcom/alibaba/sdk/android/push/common/a/a;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/a/a;

    const-string v2, "ACCS_CHANNEL_INIT_FAIL"

    const/16 v3, 0xc

    const-string v5, "10212"

    const-string/jumbo v6, "\u9759\u9ed8\u8fde\u63a5\u8fdb\u7a0b\u672a\u521d\u59cb\u5316"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/push/common/a/a;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/a;->m:Lcom/alibaba/sdk/android/push/common/a/a;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/alibaba/sdk/android/push/common/a/a;

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/a;->a:Lcom/alibaba/sdk/android/push/common/a/a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/a;->b:Lcom/alibaba/sdk/android/push/common/a/a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/a;->c:Lcom/alibaba/sdk/android/push/common/a/a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/a;->d:Lcom/alibaba/sdk/android/push/common/a/a;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/a;->e:Lcom/alibaba/sdk/android/push/common/a/a;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/a;->f:Lcom/alibaba/sdk/android/push/common/a/a;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/a;->g:Lcom/alibaba/sdk/android/push/common/a/a;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/a;->h:Lcom/alibaba/sdk/android/push/common/a/a;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/a;->i:Lcom/alibaba/sdk/android/push/common/a/a;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/a;->j:Lcom/alibaba/sdk/android/push/common/a/a;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/a;->k:Lcom/alibaba/sdk/android/push/common/a/a;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/a;->l:Lcom/alibaba/sdk/android/push/common/a/a;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/a;->m:Lcom/alibaba/sdk/android/push/common/a/a;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/a;->q:[Lcom/alibaba/sdk/android/push/common/a/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/alibaba/sdk/android/push/common/a/a;->n:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/sdk/android/push/common/a/a;->o:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alibaba/sdk/android/push/common/a/a;->p:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sdk/android/push/common/a/a;
    .registers 2

    const-class v0, Lcom/alibaba/sdk/android/push/common/a/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/push/common/a/a;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/sdk/android/push/common/a/a;
    .registers 1

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/a;->q:[Lcom/alibaba/sdk/android/push/common/a/a;

    invoke-virtual {v0}, [Lcom/alibaba/sdk/android/push/common/a/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/push/common/a/a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/common/a/a;->n:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/common/a/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/common/a/a;->p:Z

    return v0
.end method
