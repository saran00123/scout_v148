.class public final enum Lcom/alibaba/sdk/android/emas/b;
.super Ljava/lang/Enum;
.source "CacheType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/sdk/android/emas/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/alibaba/sdk/android/emas/b;

.field private static final synthetic a:[Lcom/alibaba/sdk/android/emas/b;

.field public static final enum b:Lcom/alibaba/sdk/android/emas/b;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 4
    new-instance v0, Lcom/alibaba/sdk/android/emas/b;

    const/4 v1, 0x0

    const-string v2, "MEM_CACHE"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/sdk/android/emas/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/emas/b;->a:Lcom/alibaba/sdk/android/emas/b;

    .line 5
    new-instance v0, Lcom/alibaba/sdk/android/emas/b;

    const/4 v2, 0x1

    const-string v3, "DISK_CACHE"

    invoke-direct {v0, v3, v2}, Lcom/alibaba/sdk/android/emas/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/emas/b;->b:Lcom/alibaba/sdk/android/emas/b;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lcom/alibaba/sdk/android/emas/b;

    sget-object v3, Lcom/alibaba/sdk/android/emas/b;->a:Lcom/alibaba/sdk/android/emas/b;

    aput-object v3, v0, v1

    sget-object v1, Lcom/alibaba/sdk/android/emas/b;->b:Lcom/alibaba/sdk/android/emas/b;

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/sdk/android/emas/b;->a:[Lcom/alibaba/sdk/android/emas/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sdk/android/emas/b;
    .registers 2

    .line 3
    const-class v0, Lcom/alibaba/sdk/android/emas/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/emas/b;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/sdk/android/emas/b;
    .registers 1

    .line 3
    sget-object v0, Lcom/alibaba/sdk/android/emas/b;->a:[Lcom/alibaba/sdk/android/emas/b;

    invoke-virtual {v0}, [Lcom/alibaba/sdk/android/emas/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/emas/b;

    return-object v0
.end method
