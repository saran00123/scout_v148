.class public final Lcom/google/android/exoplayer2/Player$Events;
.super Lcom/google/android/exoplayer2/util/MutableFlags;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Events"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 695
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/MutableFlags;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .registers 2

    .line 705
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/util/MutableFlags;->contains(I)Z

    move-result p1

    return p1
.end method

.method public varargs containsAny([I)Z
    .registers 2

    .line 717
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/util/MutableFlags;->containsAny([I)Z

    move-result p1

    return p1
.end method

.method public get(I)I
    .registers 2

    .line 733
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/util/MutableFlags;->get(I)I

    move-result p1

    return p1
.end method
