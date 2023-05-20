.class public final enum Lcom/alibaba/sdk/android/push/common/util/b/a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/push/common/util/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/sdk/android/push/common/util/b/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

.field public static final enum b:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

.field public static final enum c:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

.field public static final enum d:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

.field public static final enum e:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/sdk/android/push/common/util/b/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic h:[Lcom/alibaba/sdk/android/push/common/util/b/a$a;


# instance fields
.field private g:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/alibaba/sdk/android/push/common/util/b/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->a:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    const/4 v3, 0x2

    const-string v4, "WIFI"

    invoke-direct {v0, v4, v2, v3}, Lcom/alibaba/sdk/android/push/common/util/b/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->b:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    const/4 v4, 0x3

    const-string v5, "G2"

    invoke-direct {v0, v5, v3, v4}, Lcom/alibaba/sdk/android/push/common/util/b/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->c:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    const/4 v5, 0x4

    const-string v6, "G3"

    invoke-direct {v0, v6, v4, v5}, Lcom/alibaba/sdk/android/push/common/util/b/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->d:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    const/4 v6, 0x5

    const-string v7, "G4"

    invoke-direct {v0, v7, v5, v6}, Lcom/alibaba/sdk/android/push/common/util/b/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->e:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    new-array v0, v6, [Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    sget-object v6, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->a:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    aput-object v6, v0, v1

    sget-object v6, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->b:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    aput-object v6, v0, v2

    sget-object v2, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->c:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    aput-object v2, v0, v3

    sget-object v2, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->d:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    aput-object v2, v0, v4

    sget-object v2, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->e:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    aput-object v2, v0, v5

    sput-object v0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->h:[Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->f:Ljava/util/Map;

    invoke-static {}, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->values()[Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    move-result-object v0

    array-length v2, v0

    :goto_57
    if-ge v1, v2, :cond_69

    aget-object v3, v0, v1

    sget-object v4, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->f:Ljava/util/Map;

    iget v5, v3, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    :cond_69
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

    iput p3, p0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->g:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sdk/android/push/common/util/b/a$a;
    .registers 2

    const-class v0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/sdk/android/push/common/util/b/a$a;
    .registers 1

    sget-object v0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->h:[Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    invoke-virtual {v0}, [Lcom/alibaba/sdk/android/push/common/util/b/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    return-object v0
.end method
