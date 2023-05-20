.class public final enum Lcom/app/hubert/guide/model/HighLight$Shape;
.super Ljava/lang/Enum;
.source "HighLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/hubert/guide/model/HighLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Shape"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/app/hubert/guide/model/HighLight$Shape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/app/hubert/guide/model/HighLight$Shape;

.field public static final enum CIRCLE:Lcom/app/hubert/guide/model/HighLight$Shape;

.field public static final enum OVAL:Lcom/app/hubert/guide/model/HighLight$Shape;

.field public static final enum RECTANGLE:Lcom/app/hubert/guide/model/HighLight$Shape;

.field public static final enum ROUND_RECTANGLE:Lcom/app/hubert/guide/model/HighLight$Shape;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 37
    new-instance v0, Lcom/app/hubert/guide/model/HighLight$Shape;

    const/4 v1, 0x0

    const-string v2, "CIRCLE"

    invoke-direct {v0, v2, v1}, Lcom/app/hubert/guide/model/HighLight$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/app/hubert/guide/model/HighLight$Shape;->CIRCLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    .line 38
    new-instance v0, Lcom/app/hubert/guide/model/HighLight$Shape;

    const/4 v2, 0x1

    const-string v3, "RECTANGLE"

    invoke-direct {v0, v3, v2}, Lcom/app/hubert/guide/model/HighLight$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/app/hubert/guide/model/HighLight$Shape;->RECTANGLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    .line 39
    new-instance v0, Lcom/app/hubert/guide/model/HighLight$Shape;

    const/4 v3, 0x2

    const-string v4, "OVAL"

    invoke-direct {v0, v4, v3}, Lcom/app/hubert/guide/model/HighLight$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/app/hubert/guide/model/HighLight$Shape;->OVAL:Lcom/app/hubert/guide/model/HighLight$Shape;

    .line 40
    new-instance v0, Lcom/app/hubert/guide/model/HighLight$Shape;

    const/4 v4, 0x3

    const-string v5, "ROUND_RECTANGLE"

    invoke-direct {v0, v5, v4}, Lcom/app/hubert/guide/model/HighLight$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/app/hubert/guide/model/HighLight$Shape;->ROUND_RECTANGLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    const/4 v0, 0x4

    .line 36
    new-array v0, v0, [Lcom/app/hubert/guide/model/HighLight$Shape;

    sget-object v5, Lcom/app/hubert/guide/model/HighLight$Shape;->CIRCLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    aput-object v5, v0, v1

    sget-object v1, Lcom/app/hubert/guide/model/HighLight$Shape;->RECTANGLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    aput-object v1, v0, v2

    sget-object v1, Lcom/app/hubert/guide/model/HighLight$Shape;->OVAL:Lcom/app/hubert/guide/model/HighLight$Shape;

    aput-object v1, v0, v3

    sget-object v1, Lcom/app/hubert/guide/model/HighLight$Shape;->ROUND_RECTANGLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    aput-object v1, v0, v4

    sput-object v0, Lcom/app/hubert/guide/model/HighLight$Shape;->$VALUES:[Lcom/app/hubert/guide/model/HighLight$Shape;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/app/hubert/guide/model/HighLight$Shape;
    .registers 2

    .line 36
    const-class v0, Lcom/app/hubert/guide/model/HighLight$Shape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/app/hubert/guide/model/HighLight$Shape;

    return-object p0
.end method

.method public static values()[Lcom/app/hubert/guide/model/HighLight$Shape;
    .registers 1

    .line 36
    sget-object v0, Lcom/app/hubert/guide/model/HighLight$Shape;->$VALUES:[Lcom/app/hubert/guide/model/HighLight$Shape;

    invoke-virtual {v0}, [Lcom/app/hubert/guide/model/HighLight$Shape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/app/hubert/guide/model/HighLight$Shape;

    return-object v0
.end method
