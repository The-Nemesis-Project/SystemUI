.class final enum Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;
.super Ljava/lang/Enum;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StreamResources"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

.field public static final enum NotificationStream:Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

.field public static final enum RingerStream:Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

.field public static final enum SystemStream:Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

.field public static final enum VoiceStream:Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;


# instance fields
.field iconMuteRes:I

.field iconRes:I

.field iconVibrateRes:I

.field streamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const v4, 0x7f02023b

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    const-string v1, "VoiceStream"

    move v3, v2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->VoiceStream:Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    .line 42
    new-instance v3, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    const-string v4, "NotificationStream"

    const/4 v6, 0x5

    const v7, 0x7f02023d

    const v8, 0x7f02023f

    const v9, 0x7f02023e

    move v5, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->NotificationStream:Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    .line 46
    new-instance v3, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    const-string v4, "SystemStream"

    const v7, 0x7f020243

    const v8, 0x7f020245

    const v9, 0x7f020244

    move v5, v11

    move v6, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->SystemStream:Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    .line 50
    new-instance v3, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    const-string v4, "RingerStream"

    const v7, 0x7f020240

    const v8, 0x7f02023c

    const v9, 0x7f020246

    move v5, v12

    move v6, v11

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->RingerStream:Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    sget-object v1, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->VoiceStream:Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->NotificationStream:Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->SystemStream:Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->RingerStream:Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    aput-object v1, v0, v12

    sput-object v0, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->$VALUES:[Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter "streamType"
    .parameter "iconRes"
    .parameter "iconMuteRes"
    .parameter "iconVibrateRes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput p3, p0, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->streamType:I

    .line 62
    iput p4, p0, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->iconRes:I

    .line 63
    iput p5, p0, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->iconMuteRes:I

    .line 64
    iput p6, p0, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->iconVibrateRes:I

    .line 65
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;
    .locals 1
    .parameter "name"

    .prologue
    .line 37
    const-class v0, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->$VALUES:[Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    return-object v0
.end method
