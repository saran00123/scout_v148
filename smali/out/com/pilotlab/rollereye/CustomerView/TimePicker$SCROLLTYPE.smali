.class public final enum Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;
.super Ljava/lang/Enum;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/CustomerView/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SCROLLTYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;

.field public static final enum HOUR:Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;

.field public static final enum MINUTE:Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 28
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "HOUR"

    invoke-direct {v0, v3, v1, v2}, Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;->HOUR:Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;

    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;

    const/4 v3, 0x2

    const-string v4, "MINUTE"

    invoke-direct {v0, v4, v2, v3}, Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;->MINUTE:Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;

    .line 26
    new-array v0, v3, [Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;

    sget-object v3, Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;->HOUR:Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;

    aput-object v3, v0, v1

    sget-object v1, Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;->MINUTE:Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;

    aput-object v1, v0, v2

    sput-object v0, Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;->$VALUES:[Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;
    .registers 2

    .line 26
    const-class v0, Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;

    return-object p0
.end method

.method public static values()[Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;
    .registers 1

    .line 26
    sget-object v0, Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;->$VALUES:[Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;

    invoke-virtual {v0}, [Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;

    return-object v0
.end method
