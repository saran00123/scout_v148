.class public final enum Lcom/alibaba/sdk/android/push/common/a/e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/sdk/android/push/common/a/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/alibaba/sdk/android/push/common/a/e;

.field public static final enum b:Lcom/alibaba/sdk/android/push/common/a/e;

.field public static final enum c:Lcom/alibaba/sdk/android/push/common/a/e;

.field public static final enum d:Lcom/alibaba/sdk/android/push/common/a/e;

.field public static final enum e:Lcom/alibaba/sdk/android/push/common/a/e;

.field public static final enum f:Lcom/alibaba/sdk/android/push/common/a/e;

.field public static final enum g:Lcom/alibaba/sdk/android/push/common/a/e;

.field public static final enum h:Lcom/alibaba/sdk/android/push/common/a/e;

.field private static final synthetic k:[Lcom/alibaba/sdk/android/push/common/a/e;


# instance fields
.field i:I

.field j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    new-instance v0, Lcom/alibaba/sdk/android/push/common/a/e;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    const-string v3, "OK"

    invoke-direct {v0, v2, v1, v1, v3}, Lcom/alibaba/sdk/android/push/common/a/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/e;->a:Lcom/alibaba/sdk/android/push/common/a/e;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/a/e;

    const/4 v2, 0x1

    const-string v3, "API_INVAILD_INPUT"

    const/16 v4, 0x4e85

    const-string/jumbo v5, "\u53c2\u6570\u8f93\u5165\u975e\u6cd5"

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/alibaba/sdk/android/push/common/a/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/a/e;

    const/4 v3, 0x2

    const-string v4, "CHANNEL_PROCESS_CONFIG_ERROR"

    const/16 v5, 0x4e86

    const-string/jumbo v6, "\u9759\u9ed8\u8fde\u63a5\u8fdb\u7a0b\u540d\u8bbe\u7f6e\u9519\u8bef,\u8fdb\u7a0b\u540d\u4e0d\u80fd\u4e3a\u7a7a\u4e14\u5fc5\u987b\u4e0emanifest\u6587\u4ef6\u914d\u7f6e\u76f8\u7b26\u3002\u7cfb\u7edf\u81ea\u52a8\u8bbe\u7f6e\u4e3amanifest\u6240\u914d\u7f6e\u8fdb\u7a0b\u540d"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/alibaba/sdk/android/push/common/a/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/e;->c:Lcom/alibaba/sdk/android/push/common/a/e;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/a/e;

    const/4 v4, 0x3

    const-string v5, "APP_VERSION_INVALID"

    const/16 v6, 0x4e87

    const-string v7, "appversion\u53c2\u6570\u9519\u8bef,\u8bf7\u68c0\u67e5\u60a8\u7684\u7248\u672c\u53f7,\u7248\u672c\u53f7\u4e0d\u80fd\u4e3anull\u6216\u957f\u5ea6\u4e0d\u80fd\u8d85\u8fc732\u4f4d"

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/alibaba/sdk/android/push/common/a/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/e;->d:Lcom/alibaba/sdk/android/push/common/a/e;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/a/e;

    const/4 v5, 0x4

    const-string v6, "CONNECTION_FAIL"

    const/16 v7, 0x4e88

    const-string/jumbo v8, "\u7f51\u7edc\u4e0d\u7a33\u5b9a\u6216\u8fde\u63a5\u5f02\u5e38"

    invoke-direct {v0, v6, v5, v7, v8}, Lcom/alibaba/sdk/android/push/common/a/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/e;->e:Lcom/alibaba/sdk/android/push/common/a/e;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/a/e;

    const/4 v6, 0x5

    const-string v7, "CHANNEL_PROCESS_NULL"

    const/16 v8, 0x4e89

    const-string v9, "ChannelService\u672a\u8bbe\u7f6e\u8f85\u52a9\u8fdb\u7a0b"

    invoke-direct {v0, v7, v6, v8, v9}, Lcom/alibaba/sdk/android/push/common/a/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/e;->f:Lcom/alibaba/sdk/android/push/common/a/e;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/a/e;

    const/4 v7, 0x6

    const-string v8, "REQUIRED_COMPONENT_NOT_EXISTS"

    const/16 v9, 0x4e8a

    const-string/jumbo v10, "\u6838\u5fc3\u7ec4\u4ef6\u672a\u914d\u7f6e:"

    invoke-direct {v0, v8, v7, v9, v10}, Lcom/alibaba/sdk/android/push/common/a/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/e;->g:Lcom/alibaba/sdk/android/push/common/a/e;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/a/e;

    const/4 v8, 0x7

    const-string v9, "CONTINOUS_CRASH"

    const/16 v10, 0x4e8b

    const-string/jumbo v11, "\u8fde\u7eedcrash\uff0c\u63a8\u9001\u670d\u52a1\u5173\u95ed"

    invoke-direct {v0, v9, v8, v10, v11}, Lcom/alibaba/sdk/android/push/common/a/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/alibaba/sdk/android/push/common/a/e;

    sget-object v9, Lcom/alibaba/sdk/android/push/common/a/e;->a:Lcom/alibaba/sdk/android/push/common/a/e;

    aput-object v9, v0, v1

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->c:Lcom/alibaba/sdk/android/push/common/a/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->d:Lcom/alibaba/sdk/android/push/common/a/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->e:Lcom/alibaba/sdk/android/push/common/a/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->f:Lcom/alibaba/sdk/android/push/common/a/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->g:Lcom/alibaba/sdk/android/push/common/a/e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    aput-object v1, v0, v8

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/e;->k:[Lcom/alibaba/sdk/android/push/common/a/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alibaba/sdk/android/push/common/a/e;->i:I

    iput-object p4, p0, Lcom/alibaba/sdk/android/push/common/a/e;->j:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sdk/android/push/common/a/e;
    .registers 2

    const-class v0, Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/push/common/a/e;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/sdk/android/push/common/a/e;
    .registers 1

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/e;->k:[Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v0}, [Lcom/alibaba/sdk/android/push/common/a/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/push/common/a/e;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/alibaba/sdk/android/push/common/a/e;->i:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/common/a/e;->j:Ljava/lang/String;

    return-object v0
.end method
