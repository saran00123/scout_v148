.class public Lcom/pilotlab/rollereye/CustomerView/Share$Builder;
.super Ljava/lang/Object;
.source "Share.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/CustomerView/Share;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private componentClassName:Ljava/lang/String;

.field private componentPackageName:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private forcedUseSystemChooser:Z

.field private requestCode:I

.field private shareFileUri:Landroid/net/Uri;

.field private textContent:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "*/*"

    .line 185
    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->contentType:Ljava/lang/String;

    const/4 v0, -0x1

    .line 191
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->requestCode:I

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->forcedUseSystemChooser:Z

    .line 195
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/CustomerView/Share$Builder;)Landroid/app/Activity;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/CustomerView/Share$Builder;)Ljava/lang/String;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/CustomerView/Share$Builder;)Ljava/lang/String;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/CustomerView/Share$Builder;)Landroid/net/Uri;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->shareFileUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/CustomerView/Share$Builder;)Ljava/lang/String;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->textContent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/CustomerView/Share$Builder;)Ljava/lang/String;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->componentPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/CustomerView/Share$Builder;)Ljava/lang/String;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->componentClassName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/CustomerView/Share$Builder;)I
    .registers 1

    .line 183
    iget p0, p0, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->requestCode:I

    return p0
.end method

.method static synthetic access$800(Lcom/pilotlab/rollereye/CustomerView/Share$Builder;)Z
    .registers 1

    .line 183
    iget-boolean p0, p0, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->forcedUseSystemChooser:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/pilotlab/rollereye/CustomerView/Share;
    .registers 3

    .line 283
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/Share;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/CustomerView/Share;-><init>(Lcom/pilotlab/rollereye/CustomerView/Share$Builder;Lcom/pilotlab/rollereye/CustomerView/Share$1;)V

    return-object v0
.end method

.method public forcedUseSystemChooser(Z)Lcom/pilotlab/rollereye/CustomerView/Share$Builder;
    .registers 2

    .line 273
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->forcedUseSystemChooser:Z

    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/Share$Builder;
    .registers 2

    .line 205
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public setOnActivityResult(I)Lcom/pilotlab/rollereye/CustomerView/Share$Builder;
    .registers 2

    .line 262
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->requestCode:I

    return-object p0
.end method

.method public setShareFileUri(Landroid/net/Uri;)Lcom/pilotlab/rollereye/CustomerView/Share$Builder;
    .registers 2

    .line 227
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->shareFileUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setShareToComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/Share$Builder;
    .registers 3

    .line 250
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->componentPackageName:Ljava/lang/String;

    .line 251
    iput-object p2, p0, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->componentClassName:Ljava/lang/String;

    return-object p0
.end method

.method public setTextContent(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/Share$Builder;
    .registers 2

    .line 238
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->textContent:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/Share$Builder;
    .registers 2

    .line 216
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->title:Ljava/lang/String;

    return-object p0
.end method
