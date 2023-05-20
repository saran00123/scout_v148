.class public final enum Lcom/pilotlab/rollereye/Bean/PadLocationType;
.super Ljava/lang/Enum;
.source "PadLocationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pilotlab/rollereye/Bean/PadLocationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pilotlab/rollereye/Bean/PadLocationType;

.field public static final enum LEFT_BOT:Lcom/pilotlab/rollereye/Bean/PadLocationType;

.field public static final enum RIGHT_BOT:Lcom/pilotlab/rollereye/Bean/PadLocationType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 8
    new-instance v0, Lcom/pilotlab/rollereye/Bean/PadLocationType;

    const/4 v1, 0x0

    const-string v2, "LEFT_BOT"

    invoke-direct {v0, v2, v1}, Lcom/pilotlab/rollereye/Bean/PadLocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pilotlab/rollereye/Bean/PadLocationType;->LEFT_BOT:Lcom/pilotlab/rollereye/Bean/PadLocationType;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/PadLocationType;

    const/4 v2, 0x1

    const-string v3, "RIGHT_BOT"

    invoke-direct {v0, v3, v2}, Lcom/pilotlab/rollereye/Bean/PadLocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pilotlab/rollereye/Bean/PadLocationType;->RIGHT_BOT:Lcom/pilotlab/rollereye/Bean/PadLocationType;

    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [Lcom/pilotlab/rollereye/Bean/PadLocationType;

    sget-object v3, Lcom/pilotlab/rollereye/Bean/PadLocationType;->LEFT_BOT:Lcom/pilotlab/rollereye/Bean/PadLocationType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/pilotlab/rollereye/Bean/PadLocationType;->RIGHT_BOT:Lcom/pilotlab/rollereye/Bean/PadLocationType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/pilotlab/rollereye/Bean/PadLocationType;->$VALUES:[Lcom/pilotlab/rollereye/Bean/PadLocationType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/pilotlab/rollereye/Bean/PadLocationType;
    .registers 2

    .line 6
    const-class v0, Lcom/pilotlab/rollereye/Bean/PadLocationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pilotlab/rollereye/Bean/PadLocationType;

    return-object p0
.end method

.method public static values()[Lcom/pilotlab/rollereye/Bean/PadLocationType;
    .registers 1

    .line 6
    sget-object v0, Lcom/pilotlab/rollereye/Bean/PadLocationType;->$VALUES:[Lcom/pilotlab/rollereye/Bean/PadLocationType;

    invoke-virtual {v0}, [Lcom/pilotlab/rollereye/Bean/PadLocationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pilotlab/rollereye/Bean/PadLocationType;

    return-object v0
.end method
