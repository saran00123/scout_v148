.class public final enum Lcom/pilotlab/rollereye/Bean/ConnectMode;
.super Ljava/lang/Enum;
.source "ConnectMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pilotlab/rollereye/Bean/ConnectMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pilotlab/rollereye/Bean/ConnectMode;

.field public static final enum P2P:Lcom/pilotlab/rollereye/Bean/ConnectMode;

.field public static final enum WIFIDIRECT:Lcom/pilotlab/rollereye/Bean/ConnectMode;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 5
    new-instance v0, Lcom/pilotlab/rollereye/Bean/ConnectMode;

    const/4 v1, 0x0

    const-string v2, "WIFIDIRECT"

    invoke-direct {v0, v2, v1}, Lcom/pilotlab/rollereye/Bean/ConnectMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pilotlab/rollereye/Bean/ConnectMode;->WIFIDIRECT:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/ConnectMode;

    const/4 v2, 0x1

    const-string v3, "P2P"

    invoke-direct {v0, v3, v2}, Lcom/pilotlab/rollereye/Bean/ConnectMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pilotlab/rollereye/Bean/ConnectMode;->P2P:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lcom/pilotlab/rollereye/Bean/ConnectMode;

    sget-object v3, Lcom/pilotlab/rollereye/Bean/ConnectMode;->WIFIDIRECT:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    aput-object v3, v0, v1

    sget-object v1, Lcom/pilotlab/rollereye/Bean/ConnectMode;->P2P:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/pilotlab/rollereye/Bean/ConnectMode;->$VALUES:[Lcom/pilotlab/rollereye/Bean/ConnectMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/pilotlab/rollereye/Bean/ConnectMode;
    .registers 2

    .line 3
    const-class v0, Lcom/pilotlab/rollereye/Bean/ConnectMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pilotlab/rollereye/Bean/ConnectMode;

    return-object p0
.end method

.method public static values()[Lcom/pilotlab/rollereye/Bean/ConnectMode;
    .registers 1

    .line 3
    sget-object v0, Lcom/pilotlab/rollereye/Bean/ConnectMode;->$VALUES:[Lcom/pilotlab/rollereye/Bean/ConnectMode;

    invoke-virtual {v0}, [Lcom/pilotlab/rollereye/Bean/ConnectMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pilotlab/rollereye/Bean/ConnectMode;

    return-object v0
.end method
