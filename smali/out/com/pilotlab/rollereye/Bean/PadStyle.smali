.class public final enum Lcom/pilotlab/rollereye/Bean/PadStyle;
.super Ljava/lang/Enum;
.source "PadStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pilotlab/rollereye/Bean/PadStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pilotlab/rollereye/Bean/PadStyle;

.field public static final enum FIXED:Lcom/pilotlab/rollereye/Bean/PadStyle;

.field public static final enum FLOATING:Lcom/pilotlab/rollereye/Bean/PadStyle;

.field public static final enum PUSHED:Lcom/pilotlab/rollereye/Bean/PadStyle;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 7
    new-instance v0, Lcom/pilotlab/rollereye/Bean/PadStyle;

    const/4 v1, 0x0

    const-string v2, "FLOATING"

    invoke-direct {v0, v2, v1}, Lcom/pilotlab/rollereye/Bean/PadStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pilotlab/rollereye/Bean/PadStyle;->FLOATING:Lcom/pilotlab/rollereye/Bean/PadStyle;

    .line 8
    new-instance v0, Lcom/pilotlab/rollereye/Bean/PadStyle;

    const/4 v2, 0x1

    const-string v3, "FIXED"

    invoke-direct {v0, v3, v2}, Lcom/pilotlab/rollereye/Bean/PadStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pilotlab/rollereye/Bean/PadStyle;->FIXED:Lcom/pilotlab/rollereye/Bean/PadStyle;

    .line 9
    new-instance v0, Lcom/pilotlab/rollereye/Bean/PadStyle;

    const/4 v3, 0x2

    const-string v4, "PUSHED"

    invoke-direct {v0, v4, v3}, Lcom/pilotlab/rollereye/Bean/PadStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pilotlab/rollereye/Bean/PadStyle;->PUSHED:Lcom/pilotlab/rollereye/Bean/PadStyle;

    const/4 v0, 0x3

    .line 6
    new-array v0, v0, [Lcom/pilotlab/rollereye/Bean/PadStyle;

    sget-object v4, Lcom/pilotlab/rollereye/Bean/PadStyle;->FLOATING:Lcom/pilotlab/rollereye/Bean/PadStyle;

    aput-object v4, v0, v1

    sget-object v1, Lcom/pilotlab/rollereye/Bean/PadStyle;->FIXED:Lcom/pilotlab/rollereye/Bean/PadStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Bean/PadStyle;->PUSHED:Lcom/pilotlab/rollereye/Bean/PadStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/pilotlab/rollereye/Bean/PadStyle;->$VALUES:[Lcom/pilotlab/rollereye/Bean/PadStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pilotlab/rollereye/Bean/PadStyle;
    .registers 2

    .line 6
    const-class v0, Lcom/pilotlab/rollereye/Bean/PadStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pilotlab/rollereye/Bean/PadStyle;

    return-object p0
.end method

.method public static values()[Lcom/pilotlab/rollereye/Bean/PadStyle;
    .registers 1

    .line 6
    sget-object v0, Lcom/pilotlab/rollereye/Bean/PadStyle;->$VALUES:[Lcom/pilotlab/rollereye/Bean/PadStyle;

    invoke-virtual {v0}, [Lcom/pilotlab/rollereye/Bean/PadStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pilotlab/rollereye/Bean/PadStyle;

    return-object v0
.end method
