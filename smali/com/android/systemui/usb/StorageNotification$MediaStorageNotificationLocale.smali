.class Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;
.super Ljava/lang/Object;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaStorageNotificationLocale"
.end annotation


# instance fields
.field private mMediaStorageMessageId:I

.field private mMediaStorageNotificationLocale:Landroid/app/Notification;

.field private mMediaStorageTitleId:I

.field final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/StorageNotification;IILandroid/app/Notification;)V
    .locals 0
    .parameter
    .parameter "titleId"
    .parameter "messageId"
    .parameter "notification"

    .prologue
    .line 791
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 792
    iput p2, p0, Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->mMediaStorageTitleId:I

    .line 793
    iput p3, p0, Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->mMediaStorageMessageId:I

    .line 794
    iput-object p4, p0, Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->mMediaStorageNotificationLocale:Landroid/app/Notification;

    .line 795
    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 785
    iget v0, p0, Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->mMediaStorageTitleId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 785
    iget v0, p0, Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->mMediaStorageMessageId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;)Landroid/app/Notification;
    .locals 1
    .parameter "x0"

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->mMediaStorageNotificationLocale:Landroid/app/Notification;

    return-object v0
.end method
