.class public final enum Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;
.super Ljava/lang/Enum;
.source "ActionSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SheetItemColor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;

.field public static final enum Blue:Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;

.field public static final enum Red:Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 227
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;

    const/4 v1, 0x0

    const-string v2, "Blue"

    const-string v3, "#88c2ea"

    invoke-direct {v0, v2, v1, v3}, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;->Blue:Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;

    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;

    const/4 v2, 0x1

    const-string v3, "Red"

    const-string v4, "#FFE84E40"

    invoke-direct {v0, v3, v2, v4}, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;->Red:Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;

    const/4 v0, 0x2

    .line 226
    new-array v0, v0, [Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;

    sget-object v3, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;->Blue:Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;

    aput-object v3, v0, v1

    sget-object v1, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;->Red:Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;

    aput-object v1, v0, v2

    sput-object v0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;->$VALUES:[Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 231
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 232
    iput-object p3, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;
    .registers 2

    .line 226
    const-class v0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;

    return-object p0
.end method

.method public static values()[Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;
    .registers 1

    .line 226
    sget-object v0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;->$VALUES:[Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;

    invoke-virtual {v0}, [Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 240
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;->name:Ljava/lang/String;

    return-void
.end method
