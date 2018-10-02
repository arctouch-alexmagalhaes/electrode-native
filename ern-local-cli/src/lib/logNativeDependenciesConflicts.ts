import { log } from 'ern-core'

export function logNativeDependenciesConflicts(
  nativeDependencies: any,
  {
    throwIfConflict,
  }: {
    throwIfConflict?: boolean
  } = {}
) {
  const conflictingDependencies =
    nativeDependencies.pluginsWithMismatchingVersions
  if (conflictingDependencies.length > 0) {
    if (!throwIfConflict) {
      log.warn(
        '============================================================================='
      )
      log.warn(
        'The following native dependencies are using different conflicting versions : '
      )
      conflictingDependencies.foreach(p => log.warn(`- ${p}`))
      log.warn('Ignoring due to the use of the --force flag')
      log.warn(
        '============================================================================='
      )
    } else {
      throw new Error(
        `Some native dependencies are using conflicting versions : ${conflictingDependencies.join(
          ','
        )}`
      )
    }
  }
}
