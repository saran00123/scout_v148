.class public final enum Lcom/xiaomi/push/ic;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/push/ic;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/push/ic;

.field private static final synthetic a:[Lcom/xiaomi/push/ic;

.field public static final enum b:Lcom/xiaomi/push/ic;

.field public static final enum c:Lcom/xiaomi/push/ic;

.field public static final enum d:Lcom/xiaomi/push/ic;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/xiaomi/push/ic;

    const/4 v1, 0x1

    const-string v2, "INT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/xiaomi/push/ic;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/ic;->a:Lcom/xiaomi/push/ic;

    new-instance v0, Lcom/xiaomi/push/ic;

    const/4 v2, 0x2

    const-string v3, "LONG"

    invoke-direct {v0, v3, v1, v2}, Lcom/xiaomi/push/ic;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/ic;->b:Lcom/xiaomi/push/ic;

    new-instance v0, Lcom/xiaomi/push/ic;

    const/4 v1, 0x3

    const-string v3, "STRING"

    invoke-direct {v0, v3, v2, v1}, Lcom/xiaomi/push/ic;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/ic;->c:Lcom/xiaomi/push/ic;

    new-instance v0, Lcom/xiaomi/push/ic;

    const-string v2, "BOOLEAN"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaomi/push/ic;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/ic;->d:Lcom/xiaomi/push/ic;

    invoke-static {}, Lcom/xiaomi/push/ic;->a()[Lcom/xiaomi/push/ic;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/ic;->a:[Lcom/xiaomi/push/ic;

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

    iput p3, p0, Lcom/xiaomi/push/ic;->a:I

    return-void
.end method

.method public static a(I)Lcom/xiaomi/push/ic;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_17

    const/4 v0, 0x2

    if-eq p0, v0, :cond_14

    const/4 v0, 0x3

    if-eq p0, v0, :cond_11

    const/4 v0, 0x4

    if-eq p0, v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    :cond_e
    sget-object p0, Lcom/xiaomi/push/ic;->d:Lcom/xiaomi/push/ic;

    return-object p0

    :cond_11
    sget-object p0, Lcom/xiaomi/push/ic;->c:Lcom/xiaomi/push/ic;

    return-object p0

    :cond_14
    sget-object p0, Lcom/xiaomi/push/ic;->b:Lcom/xiaomi/push/ic;

    return-object p0

    :cond_17
    sget-object p0, Lcom/xiaomi/push/ic;->a:Lcom/xiaomi/push/ic;

    return-object p0
.end method

.method private static synthetic a()[Lcom/xiaomi/push/ic;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/xiaomi/push/ic;

    sget-object v1, Lcom/xiaomi/push/ic;->a:Lcom/xiaomi/push/ic;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/ic;->b:Lcom/xiaomi/push/ic;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/ic;->c:Lcom/xiaomi/push/ic;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/ic;->d:Lcom/xiaomi/push/ic;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/push/ic;
    .registers 2

    const-class v0, Lcom/xiaomi/push/ic;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/push/ic;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/push/ic;
    .registers 1

    sget-object v0, Lcom/xiaomi/push/ic;->a:[Lcom/xiaomi/push/ic;

    invoke-virtual {v0}, [Lcom/xiaomi/push/ic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/push/ic;

    return-object v0
.end method
