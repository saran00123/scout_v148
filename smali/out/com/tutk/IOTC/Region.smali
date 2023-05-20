.class public final enum Lcom/tutk/IOTC/Region;
.super Ljava/lang/Enum;
.source "Region.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tutk/IOTC/Region;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tutk/IOTC/Region;

.field public static final enum REGION_ALL:Lcom/tutk/IOTC/Region;

.field public static final enum REGION_ASIA:Lcom/tutk/IOTC/Region;

.field public static final enum REGION_CN:Lcom/tutk/IOTC/Region;

.field public static final enum REGION_EU:Lcom/tutk/IOTC/Region;

.field public static final enum REGION_US:Lcom/tutk/IOTC/Region;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 12
    new-instance v0, Lcom/tutk/IOTC/Region;

    const/4 v1, 0x0

    const-string v2, "REGION_ALL"

    invoke-direct {v0, v2, v1, v1}, Lcom/tutk/IOTC/Region;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tutk/IOTC/Region;->REGION_ALL:Lcom/tutk/IOTC/Region;

    .line 13
    new-instance v0, Lcom/tutk/IOTC/Region;

    const/4 v2, 0x1

    const-string v3, "REGION_CN"

    invoke-direct {v0, v3, v2, v2}, Lcom/tutk/IOTC/Region;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tutk/IOTC/Region;->REGION_CN:Lcom/tutk/IOTC/Region;

    .line 14
    new-instance v0, Lcom/tutk/IOTC/Region;

    const/4 v3, 0x2

    const-string v4, "REGION_EU"

    invoke-direct {v0, v4, v3, v3}, Lcom/tutk/IOTC/Region;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tutk/IOTC/Region;->REGION_EU:Lcom/tutk/IOTC/Region;

    .line 15
    new-instance v0, Lcom/tutk/IOTC/Region;

    const/4 v4, 0x3

    const-string v5, "REGION_US"

    invoke-direct {v0, v5, v4, v4}, Lcom/tutk/IOTC/Region;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tutk/IOTC/Region;->REGION_US:Lcom/tutk/IOTC/Region;

    .line 16
    new-instance v0, Lcom/tutk/IOTC/Region;

    const/4 v5, 0x4

    const-string v6, "REGION_ASIA"

    invoke-direct {v0, v6, v5, v5}, Lcom/tutk/IOTC/Region;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tutk/IOTC/Region;->REGION_ASIA:Lcom/tutk/IOTC/Region;

    const/4 v0, 0x5

    .line 11
    new-array v0, v0, [Lcom/tutk/IOTC/Region;

    sget-object v6, Lcom/tutk/IOTC/Region;->REGION_ALL:Lcom/tutk/IOTC/Region;

    aput-object v6, v0, v1

    sget-object v1, Lcom/tutk/IOTC/Region;->REGION_CN:Lcom/tutk/IOTC/Region;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tutk/IOTC/Region;->REGION_EU:Lcom/tutk/IOTC/Region;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tutk/IOTC/Region;->REGION_US:Lcom/tutk/IOTC/Region;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tutk/IOTC/Region;->REGION_ASIA:Lcom/tutk/IOTC/Region;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tutk/IOTC/Region;->$VALUES:[Lcom/tutk/IOTC/Region;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/tutk/IOTC/Region;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tutk/IOTC/Region;
    .registers 2

    .line 11
    const-class v0, Lcom/tutk/IOTC/Region;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tutk/IOTC/Region;

    return-object p0
.end method

.method public static values()[Lcom/tutk/IOTC/Region;
    .registers 1

    .line 11
    sget-object v0, Lcom/tutk/IOTC/Region;->$VALUES:[Lcom/tutk/IOTC/Region;

    invoke-virtual {v0}, [Lcom/tutk/IOTC/Region;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tutk/IOTC/Region;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 25
    iget v0, p0, Lcom/tutk/IOTC/Region;->value:I

    return v0
.end method
