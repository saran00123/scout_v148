.class final Lcom/jakewharton/rxbinding2/widget/AutoValue_SeekBarStartChangeEvent;
.super Lcom/jakewharton/rxbinding2/widget/SeekBarStartChangeEvent;
.source "AutoValue_SeekBarStartChangeEvent.java"


# instance fields
.field private final view:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Landroid/widget/SeekBar;)V
    .registers 3

    .line 12
    invoke-direct {p0}, Lcom/jakewharton/rxbinding2/widget/SeekBarStartChangeEvent;-><init>()V

    if-eqz p1, :cond_8

    .line 16
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SeekBarStartChangeEvent;->view:Landroid/widget/SeekBar;

    return-void

    .line 14
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null view"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    .line 37
    :cond_4
    instance-of v0, p1, Lcom/jakewharton/rxbinding2/widget/SeekBarStartChangeEvent;

    if-eqz v0, :cond_15

    .line 38
    check-cast p1, Lcom/jakewharton/rxbinding2/widget/SeekBarStartChangeEvent;

    .line 39
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SeekBarStartChangeEvent;->view:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lcom/jakewharton/rxbinding2/widget/SeekBarStartChangeEvent;->view()Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SeekBarStartChangeEvent;->view:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeekBarStartChangeEvent{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SeekBarStartChangeEvent;->view:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public view()Landroid/widget/SeekBar;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SeekBarStartChangeEvent;->view:Landroid/widget/SeekBar;

    return-object v0
.end method
